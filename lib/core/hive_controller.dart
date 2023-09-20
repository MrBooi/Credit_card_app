import 'package:hive/hive.dart';

class HiveController {
  final String boxName;

  HiveController({
    required this.boxName,
  });

  Future<Box> getBox() => Hive.openBox(boxName);
}
