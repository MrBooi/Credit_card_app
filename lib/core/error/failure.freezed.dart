// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() socketFailure,
    required TResult Function() cardAlreadyExistsFailure,
    required TResult Function() countryCardIsBannedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? socketFailure,
    TResult? Function()? cardAlreadyExistsFailure,
    TResult? Function()? countryCardIsBannedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? socketFailure,
    TResult Function()? cardAlreadyExistsFailure,
    TResult Function()? countryCardIsBannedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(CardAlreadyExistsFailure value)
        cardAlreadyExistsFailure,
    required TResult Function(CountryCardIsBannedFailure value)
        countryCardIsBannedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(SocketFailure value)? socketFailure,
    TResult? Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult? Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailure>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerFailure with DiagnosticableTreeMixin implements ServerFailure {
  const _$ServerFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.serverFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.serverFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() socketFailure,
    required TResult Function() cardAlreadyExistsFailure,
    required TResult Function() countryCardIsBannedFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? socketFailure,
    TResult? Function()? cardAlreadyExistsFailure,
    TResult? Function()? countryCardIsBannedFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? socketFailure,
    TResult Function()? cardAlreadyExistsFailure,
    TResult Function()? countryCardIsBannedFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(CardAlreadyExistsFailure value)
        cardAlreadyExistsFailure,
    required TResult Function(CountryCardIsBannedFailure value)
        countryCardIsBannedFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(SocketFailure value)? socketFailure,
    TResult? Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult? Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure() = _$ServerFailure;
}

/// @nodoc
abstract class _$$CacheFailureCopyWith<$Res> {
  factory _$$CacheFailureCopyWith(
          _$CacheFailure value, $Res Function(_$CacheFailure) then) =
      __$$CacheFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CacheFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailure>
    implements _$$CacheFailureCopyWith<$Res> {
  __$$CacheFailureCopyWithImpl(
      _$CacheFailure _value, $Res Function(_$CacheFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheFailure with DiagnosticableTreeMixin implements CacheFailure {
  const _$CacheFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.cacheFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.cacheFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() socketFailure,
    required TResult Function() cardAlreadyExistsFailure,
    required TResult Function() countryCardIsBannedFailure,
  }) {
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? socketFailure,
    TResult? Function()? cardAlreadyExistsFailure,
    TResult? Function()? countryCardIsBannedFailure,
  }) {
    return cacheFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? socketFailure,
    TResult Function()? cardAlreadyExistsFailure,
    TResult Function()? countryCardIsBannedFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(CardAlreadyExistsFailure value)
        cardAlreadyExistsFailure,
    required TResult Function(CountryCardIsBannedFailure value)
        countryCardIsBannedFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(SocketFailure value)? socketFailure,
    TResult? Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult? Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure() = _$CacheFailure;
}

/// @nodoc
abstract class _$$SocketFailureCopyWith<$Res> {
  factory _$$SocketFailureCopyWith(
          _$SocketFailure value, $Res Function(_$SocketFailure) then) =
      __$$SocketFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SocketFailure>
    implements _$$SocketFailureCopyWith<$Res> {
  __$$SocketFailureCopyWithImpl(
      _$SocketFailure _value, $Res Function(_$SocketFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketFailure with DiagnosticableTreeMixin implements SocketFailure {
  const _$SocketFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.socketFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.socketFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SocketFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() socketFailure,
    required TResult Function() cardAlreadyExistsFailure,
    required TResult Function() countryCardIsBannedFailure,
  }) {
    return socketFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? socketFailure,
    TResult? Function()? cardAlreadyExistsFailure,
    TResult? Function()? countryCardIsBannedFailure,
  }) {
    return socketFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? socketFailure,
    TResult Function()? cardAlreadyExistsFailure,
    TResult Function()? countryCardIsBannedFailure,
    required TResult orElse(),
  }) {
    if (socketFailure != null) {
      return socketFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(CardAlreadyExistsFailure value)
        cardAlreadyExistsFailure,
    required TResult Function(CountryCardIsBannedFailure value)
        countryCardIsBannedFailure,
  }) {
    return socketFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(SocketFailure value)? socketFailure,
    TResult? Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult? Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
  }) {
    return socketFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
    required TResult orElse(),
  }) {
    if (socketFailure != null) {
      return socketFailure(this);
    }
    return orElse();
  }
}

abstract class SocketFailure implements Failure {
  const factory SocketFailure() = _$SocketFailure;
}

/// @nodoc
abstract class _$$CardAlreadyExistsFailureCopyWith<$Res> {
  factory _$$CardAlreadyExistsFailureCopyWith(_$CardAlreadyExistsFailure value,
          $Res Function(_$CardAlreadyExistsFailure) then) =
      __$$CardAlreadyExistsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardAlreadyExistsFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CardAlreadyExistsFailure>
    implements _$$CardAlreadyExistsFailureCopyWith<$Res> {
  __$$CardAlreadyExistsFailureCopyWithImpl(_$CardAlreadyExistsFailure _value,
      $Res Function(_$CardAlreadyExistsFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CardAlreadyExistsFailure
    with DiagnosticableTreeMixin
    implements CardAlreadyExistsFailure {
  const _$CardAlreadyExistsFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.cardAlreadyExistsFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'Failure.cardAlreadyExistsFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardAlreadyExistsFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() socketFailure,
    required TResult Function() cardAlreadyExistsFailure,
    required TResult Function() countryCardIsBannedFailure,
  }) {
    return cardAlreadyExistsFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? socketFailure,
    TResult? Function()? cardAlreadyExistsFailure,
    TResult? Function()? countryCardIsBannedFailure,
  }) {
    return cardAlreadyExistsFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? socketFailure,
    TResult Function()? cardAlreadyExistsFailure,
    TResult Function()? countryCardIsBannedFailure,
    required TResult orElse(),
  }) {
    if (cardAlreadyExistsFailure != null) {
      return cardAlreadyExistsFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(CardAlreadyExistsFailure value)
        cardAlreadyExistsFailure,
    required TResult Function(CountryCardIsBannedFailure value)
        countryCardIsBannedFailure,
  }) {
    return cardAlreadyExistsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(SocketFailure value)? socketFailure,
    TResult? Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult? Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
  }) {
    return cardAlreadyExistsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
    required TResult orElse(),
  }) {
    if (cardAlreadyExistsFailure != null) {
      return cardAlreadyExistsFailure(this);
    }
    return orElse();
  }
}

abstract class CardAlreadyExistsFailure implements Failure {
  const factory CardAlreadyExistsFailure() = _$CardAlreadyExistsFailure;
}

/// @nodoc
abstract class _$$CountryCardIsBannedFailureCopyWith<$Res> {
  factory _$$CountryCardIsBannedFailureCopyWith(
          _$CountryCardIsBannedFailure value,
          $Res Function(_$CountryCardIsBannedFailure) then) =
      __$$CountryCardIsBannedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryCardIsBannedFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CountryCardIsBannedFailure>
    implements _$$CountryCardIsBannedFailureCopyWith<$Res> {
  __$$CountryCardIsBannedFailureCopyWithImpl(
      _$CountryCardIsBannedFailure _value,
      $Res Function(_$CountryCardIsBannedFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountryCardIsBannedFailure
    with DiagnosticableTreeMixin
    implements CountryCardIsBannedFailure {
  const _$CountryCardIsBannedFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.countryCardIsBannedFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'Failure.countryCardIsBannedFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryCardIsBannedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() socketFailure,
    required TResult Function() cardAlreadyExistsFailure,
    required TResult Function() countryCardIsBannedFailure,
  }) {
    return countryCardIsBannedFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? socketFailure,
    TResult? Function()? cardAlreadyExistsFailure,
    TResult? Function()? countryCardIsBannedFailure,
  }) {
    return countryCardIsBannedFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? socketFailure,
    TResult Function()? cardAlreadyExistsFailure,
    TResult Function()? countryCardIsBannedFailure,
    required TResult orElse(),
  }) {
    if (countryCardIsBannedFailure != null) {
      return countryCardIsBannedFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(CardAlreadyExistsFailure value)
        cardAlreadyExistsFailure,
    required TResult Function(CountryCardIsBannedFailure value)
        countryCardIsBannedFailure,
  }) {
    return countryCardIsBannedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(SocketFailure value)? socketFailure,
    TResult? Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult? Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
  }) {
    return countryCardIsBannedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(CardAlreadyExistsFailure value)? cardAlreadyExistsFailure,
    TResult Function(CountryCardIsBannedFailure value)?
        countryCardIsBannedFailure,
    required TResult orElse(),
  }) {
    if (countryCardIsBannedFailure != null) {
      return countryCardIsBannedFailure(this);
    }
    return orElse();
  }
}

abstract class CountryCardIsBannedFailure implements Failure {
  const factory CountryCardIsBannedFailure() = _$CountryCardIsBannedFailure;
}
