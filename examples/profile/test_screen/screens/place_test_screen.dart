import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'general_test_screen.dart';

abstract class PlaceTestScreen {
  /// поле Place of residence на экране персональных данных
  static Finder placeOfResidenceField = GeneralTestScreen.textField('Place of residence');


  /// кнопка перехода на следующий экран с экрана Place of residence
  static Finder nextBtn = find.byIcon(Icons.navigate_next);
}
