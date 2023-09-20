import 'package:card_app/core/hive_controller.dart';
import 'package:card_app/features/add_card/domain/card_model.dart';

abstract class PaymentCardLocalDataSource {
  Future<void> saveCard(CardModel cardModel);
  Future<List<CardModel>> getSavedCards();
  Future<bool> cardExists(String cardNumber);
}

class PaymentCardLocalDataSourceImp implements PaymentCardLocalDataSource {
  final HiveController hiveController;

  PaymentCardLocalDataSourceImp(this.hiveController);
  @override
  Future<List<CardModel>> getSavedCards() async {
    final box = await hiveController.getBox();

    final cards = box.toMap().map(
          (k, e) => MapEntry(
            k.toString(),
            Map<String, dynamic>.from(e),
          ),
        );
    final results = cards.values.toList();

    return results.map(
      (e) {
        return CardModel.fromJson(e);
      },
    ).toList();
  }

  @override
  Future<void> saveCard(CardModel cardModel) async {
    final box = await hiveController.getBox();
    box.put(cardModel.number, cardModel.toJsonMap(cardModel));
  }

  @override
  Future<bool> cardExists(String cardNumber) async {
    final box = await hiveController.getBox();

    if (box.get(cardNumber) == null) {
      return false;
    }

    return true;
  }
}
