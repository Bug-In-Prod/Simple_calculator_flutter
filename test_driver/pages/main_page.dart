import 'package:flutter_driver/flutter_driver.dart';

class MainPage {

  FlutterDriver _driver;

  //Constructor
  MainPage(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<void> tapButton(key) async {
    final button = find.byValueKey("btn_$key");

    return _driver.tap(button);
  }

  Future<void> tapButtonEqual() async {
    final buttonEqual = find.byValueKey("btn_=");

    return _driver.tap(buttonEqual);
  }

  Future<String> getResultOperation() async {
    final resultField = find.byValueKey("resultField");

    return _driver.getText(resultField);
  }
}