import 'dart:async';
import 'dart:io';

import 'package:card_app/locator.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  final Directory tempDir = await getTemporaryDirectory();
  Hive.init(tempDir.path);

  // Setup the dependency injection.
  await initServices();

  runApp(await builder());
}
