import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'general_test_screen.dart';

abstract class AboutTestScreen {
  /// поле About me на экране
  static Finder aboutField = GeneralTestScreen.textField('Write a few words about yourself');

  /// кнопка перехода на следующий экран
  static Finder saveBtn = find.widgetWithText(ElevatedButton, 'Ok');
}
