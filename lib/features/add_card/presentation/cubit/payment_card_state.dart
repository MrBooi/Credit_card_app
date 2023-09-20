part of 'payment_card_cubit.dart';

enum Status { error, loaded, loading, initial }

@freezed
class PaymentCardState with _$PaymentCardState {
  const PaymentCardState._();
  factory PaymentCardState.initial() => PaymentCardState(
        status: Status.initial,
        cardModel: CardModel.empty(),
        data: [],
        savingOption: none(),
        isSaving: false,
      );

  factory PaymentCardState({
    required Status status,
    required CardModel cardModel,
    required List<CardModel> data,
    required Option<Either<Failure, Unit>> savingOption,
    required bool isSaving,
  }) = _PaymentCardState;
}
