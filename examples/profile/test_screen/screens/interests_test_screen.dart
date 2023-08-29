import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'general_test_screen.dart';

abstract class InterestsTestScreen {

  /// кнопка перехода на следующий экран с экрана Interests
  static Finder nextBtn = find.byIcon(Icons.navigate_next);
}
