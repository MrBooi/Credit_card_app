// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentCardState {
  Status get status => throw _privateConstructorUsedError;
  CardModel get cardModel => throw _privateConstructorUsedError;
  List<CardModel> get data => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get savingOption =>
      throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentCardStateCopyWith<PaymentCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardStateCopyWith<$Res> {
  factory $PaymentCardStateCopyWith(
          PaymentCardState value, $Res Function(PaymentCardState) then) =
      _$PaymentCardStateCopyWithImpl<$Res, PaymentCardState>;
  @useResult
  $Res call(
      {Status status,
      CardModel cardModel,
      List<CardModel> data,
      Option<Either<Failure, Unit>> savingOption,
      bool isSaving});
}

/// @nodoc
class _$PaymentCardStateCopyWithImpl<$Res, $Val extends PaymentCardState>
    implements $PaymentCardStateCopyWith<$Res> {
  _$PaymentCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cardModel = null,
    Object? data = null,
    Object? savingOption = null,
    Object? isSaving = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      cardModel: null == cardModel
          ? _value.cardModel
          : cardModel // ignore: cast_nullable_to_non_nullable
              as CardModel,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      savingOption: null == savingOption
          ? _value.savingOption
          : savingOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentCardStateCopyWith<$Res>
    implements $PaymentCardStateCopyWith<$Res> {
  factory _$$_PaymentCardStateCopyWith(
          _$_PaymentCardState value, $Res Function(_$_PaymentCardState) then) =
      __$$_PaymentCardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      CardModel cardModel,
      List<CardModel> data,
      Option<Either<Failure, Unit>> savingOption,
      bool isSaving});
}

/// @nodoc
class __$$_PaymentCardStateCopyWithImpl<$Res>
    extends _$PaymentCardStateCopyWithImpl<$Res, _$_PaymentCardState>
    implements _$$_PaymentCardStateCopyWith<$Res> {
  __$$_PaymentCardStateCopyWithImpl(
      _$_PaymentCardState _value, $Res Function(_$_PaymentCardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cardModel = null,
    Object? data = null,
    Object? savingOption = null,
    Object? isSaving = null,
  }) {
    return _then(_$_PaymentCardState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      cardModel: null == cardModel
          ? _value.cardModel
          : cardModel // ignore: cast_nullable_to_non_nullable
              as CardModel,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      savingOption: null == savingOption
          ? _value.savingOption
          : savingOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PaymentCardState extends _PaymentCardState {
  _$_PaymentCardState(
      {required this.status,
      required this.cardModel,
      required final List<CardModel> data,
      required this.savingOption,
      required this.isSaving})
      : _data = data,
        super._();

  @override
  final Status status;
  @override
  final CardModel cardModel;
  final List<CardModel> _data;
  @override
  List<CardModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Option<Either<Failure, Unit>> savingOption;
  @override
  final bool isSaving;

  @override
  String toString() {
    return 'PaymentCardState(status: $status, cardModel: $cardModel, data: $data, savingOption: $savingOption, isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentCardState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cardModel, cardModel) ||
                other.cardModel == cardModel) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.savingOption, savingOption) ||
                other.savingOption == savingOption) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, cardModel,
      const DeepCollectionEquality().hash(_data), savingOption, isSaving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentCardStateCopyWith<_$_PaymentCardState> get copyWith =>
      __$$_PaymentCardStateCopyWithImpl<_$_PaymentCardState>(this, _$identity);
}

abstract class _PaymentCardState extends PaymentCardState {
  factory _PaymentCardState(
      {required final Status status,
      required final CardModel cardModel,
      required final List<CardModel> data,
      required final Option<Either<Failure, Unit>> savingOption,
      required final bool isSaving}) = _$_PaymentCardState;
  _PaymentCardState._() : super._();

  @override
  Status get status;
  @override
  CardModel get cardModel;
  @override
  List<CardModel> get data;
  @override
  Option<Either<Failure, Unit>> get savingOption;
  @override
  bool get isSaving;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCardStateCopyWith<_$_PaymentCardState> get copyWith =>
      throw _privateConstructorUsedError;
}
