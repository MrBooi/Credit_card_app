import 'package:card_app/bootstrap.dart';
import 'package:card_app/features/add_card/presentation/add_card_page.dart';
import 'package:card_app/features/add_card/presentation/cubit/payment_card_cubit.dart';
import 'package:card_app/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  bootstrap(() => const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PaymentCardCubit>(
        create: (_) => sl<PaymentCardCubit>(),
        child: const AddCarPage(),
      ),
    );
  }
}
