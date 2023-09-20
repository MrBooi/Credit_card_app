import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.serverFailure() = ServerFailure;
  const factory Failure.cacheFailure() = CacheFailure;
  const factory Failure.socketFailure() = SocketFailure;
  const factory Failure.cardAlreadyExistsFailure() = CardAlreadyExistsFailure;
  const factory Failure.countryCardIsBannedFailure() =
      CountryCardIsBannedFailure;
}
