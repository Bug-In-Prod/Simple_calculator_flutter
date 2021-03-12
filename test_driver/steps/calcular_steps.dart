import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/main_page.dart';

class PressFirstNumber extends Given1WithWorld<String, FlutterWorld> {
  PressFirstNumber()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String number) async {
      MainPage mainPage = MainPage(world.driver);

    await mainPage.tapButton(number);
  }

  @override
  RegExp get pattern => RegExp(r"que o usuário pressiona o número {string}");

}

class ChooseOperator extends And1WithWorld<String, FlutterWorld> {
  ChooseOperator()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String operation) async {
    MainPage mainPage = MainPage(world.driver);

    await mainPage.tapButton(operation);
  }

  @override
  RegExp get pattern => RegExp(r"escolhe a operação {string}");
}

class PressSecondNumber extends And1WithWorld<String, FlutterWorld> {
  PressSecondNumber()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String number) async {
    MainPage mainPage = MainPage(world.driver);

    await mainPage.tapButton(number);
  }

  @override
  RegExp get pattern => RegExp(r"pressiona o número {string}");
}

class PressResult extends WhenWithWorld<FlutterWorld> {
  PressResult()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    MainPage mainPage = MainPage(world.driver);

    await mainPage.tapButtonEqual();
  }

  @override
  RegExp get pattern => RegExp(r"tocar no sinal de igual");
}

class ResultOperation extends Then1WithWorld<String, FlutterWorld> {
  ResultOperation()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String result) async {
    MainPage mainPage = MainPage(world.driver);

    expectMatch(await mainPage.getResultOperation(), result);
  }

  @override
  RegExp get pattern => RegExp(r"deve visualizar o número {string} como resultado");
}

