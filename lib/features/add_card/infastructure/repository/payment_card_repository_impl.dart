import 'package:card_app/core/configaration.dart';
import 'package:card_app/core/error/failure.dart';
import 'package:card_app/features/add_card/domain/card_model.dart';
import 'package:card_app/features/add_card/infastructure/data_source/payment_card_local_data_source.dart';
import 'package:dartz/dartz.dart';

abstract class PaymentCardRepository {
  Future<Either<Failure, Unit>> saveCard(CardModel model);
  Future<Either<Failure, List<CardModel>>> getCardsList();
}

class PaymentCardRepositoryImpl implements PaymentCardRepository {
  final PaymentCardLocalDataSourceImp local;
  final Configuration configuration;

  PaymentCardRepositoryImpl(this.local, this.configuration);
  @override
  Future<Either<Failure, List<CardModel>>> getCardsList() async {
    try {
      final results = await local.getSavedCards();
      return right(results);
    } catch (e) {
      return left(const Failure.serverFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> saveCard(CardModel model) async {
    try {
      final cardExist = await local.cardExists(model.number);
      var isCardBanned = false;

      final bannedList = configuration.bannedListOfCountry;

      final findCountry = bannedList.indexWhere(
        (e) => e.containsKey(
          model.countryIssuer.toLowerCase(),
        ),
      );

      if (findCountry >= 0) {
        final cardType = CardModel.cardBrand(model.number).toLowerCase();

        isCardBanned =
            bannedList[findCountry].values.toList()[0].contains(cardType);
      }

      if (isCardBanned) {
        return left(const Failure.countryCardIsBannedFailure());
      } else if (cardExist) {
        return left(const Failure.cardAlreadyExistsFailure());
      } else {
        await local.saveCard(model);
        return right(unit);
      }
    } catch (e) {
      return left(const Failure.serverFailure());
    }
  }
}
