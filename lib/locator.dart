import 'package:card_app/core/configaration.dart';
import 'package:card_app/core/hive_controller.dart';
import 'package:card_app/features/add_card/infastructure/data_source/payment_card_local_data_source.dart';
import 'package:card_app/features/add_card/infastructure/repository/payment_card_repository_impl.dart';
import 'package:card_app/features/add_card/presentation/cubit/payment_card_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;
Future<void> initServices() async {
  // External
  sl.registerLazySingleton<HiveController>(
    () => HiveController(boxName: 'payment-cards'),
  );

  /// cubit
  sl.registerLazySingleton(() => PaymentCardCubit(sl()));

  sl.registerLazySingleton(
    () => PaymentCardLocalDataSourceImp(sl()),
  );

  /// Repository
  sl.registerLazySingleton(
    () => PaymentCardRepositoryImpl(
      sl(),
      Configuration(),
    ),
  );
}
