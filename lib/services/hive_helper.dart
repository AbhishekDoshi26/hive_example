import 'package:hive/hive.dart';

class HiveHelper {
  static late Box hiveBox;

  static void createDB() {
    try {
      if (!hiveBox.isOpen) hiveBox = Hive.box('hiveExample');
    } catch (exception) {
      print(exception.toString());
    }
  }

  static void insertPrimitiveData(String key, var value) {
    try {
      hiveBox.put(key, value);
    } catch (exception) {
      print(exception.toString());
    }
  }

  static dynamic fetchPrimitiveData(String key) {
    try {
      return hiveBox.get(key) ?? 0;
    } catch (exception) {
      print(exception.toString());
    }
  }

  static void deleteValue(String key) {
    try {
      hiveBox.delete(key);
    } catch (exception) {
      print(exception.toString());
    }
  }

  static void clearDB() {
    try {
      hiveBox.clear();
    } catch (exception) {
      print(exception.toString());
    }
  }

  static void closeDB() {
    try {
      hiveBox.close();
    } catch (exception) {
      print(exception.toString());
    }
  }
}
