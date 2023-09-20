import 'package:card_app/core/error/failure.dart';
import 'package:card_app/features/add_card/domain/card_model.dart';
import 'package:card_app/features/add_card/infastructure/repository/payment_card_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_card_state.dart';
part 'payment_card_cubit.freezed.dart';

class PaymentCardCubit extends Cubit<PaymentCardState> {
  final PaymentCardRepositoryImpl repository;
  PaymentCardCubit(this.repository) : super(PaymentCardState.initial());

  Future<void> addCard(CardModel model) async {
    emit(state.copyWith(isSaving: true));

    final eitherFailureOrUnit = await repository.saveCard(model);

    eitherFailureOrUnit.fold(
      (f) => emit(state.copyWith(isSaving: false, savingOption: some(left(f)))),
      (r) {
        emit(
          state.copyWith(isSaving: false, savingOption: some(right(r))),
        );
      },
    );
  }

  Future<void> updatedCardHolder(String holder) async {
    emit(
      state.copyWith(
        cardModel: state.cardModel.copyWith(holder: holder),
      ),
    );
  }

  Future<void> updatedCountryIssuer(String country) async {
    emit(
      state.copyWith(
        cardModel: state.cardModel.copyWith(countryIssuer: country),
      ),
    );
  }

  Future<void> updatedCardNumber(String number) async {
    if (number.isEmpty) {
      emit(
        state.copyWith(
          cardModel: state.cardModel.copyWith(
            number: CardModel.empty().number,
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          cardModel: state.cardModel.copyWith(number: number),
        ),
      );
    }
  }

  Future<void> updatedCardCVV(String cvv) async {
    emit(
      state.copyWith(
        cardModel: state.cardModel.copyWith(cvv: cvv),
      ),
    );
  }

  Future<void> updatedResetCardForm() async {
    emit(
      state.copyWith(
        cardModel: CardModel.empty(),
        savingOption: none(),
      ),
    );
  }

  Future<void> updatedCardExpiryDate(String expiry) async {
    const String dText = "00/00";

    List d = [];
    if (expiry.isEmpty) {
      d = dText.split("/");
    } else {
      d = (expiry + dText.substring(expiry.length)).split("/");
    }
    if (d.isNotEmpty) {
      emit(
        state.copyWith(
          cardModel: state.cardModel.copyWith(
            expiryMonth: d[0].toString(),
            expiryYear: d[1].toString(),
          ),
        ),
      );
    }
  }

  Future<void> getSavedCards() async {
    emit(state.copyWith(status: Status.loading));
    final eitherFailureOrCards = await repository.getCardsList();

    eitherFailureOrCards.fold(
      (f) => emit(state.copyWith(status: Status.error)),
      (data) => emit(
        state.copyWith(status: Status.loaded, data: data),
      ),
    );
  }
}
