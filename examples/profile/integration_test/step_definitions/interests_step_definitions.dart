import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';
import 'package:profile/features/profile/screens/interests_screen/interests_screen.dart';

import '../../test_screen/screens/interests_test_screen.dart';

abstract class InterestsStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я выбираю {string} из интересов$'),
          (interests, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            final widgetFinder = find.descendant(
              of: find.widgetWithText(Row, interests),
              matching: find.text(interests),
            );
            // Нажимаем на чекбокс
            await tester.tap(widgetFinder);
            // Ждем, пока произойдет анимация и обновится состояние
            await tester.pumpAndSettle();
          },
        ),
        when<FlutterWidgetTesterWorld>(
          RegExp(r'Я перехожу далее$'),
          (context) async {
            final tester = context.world.rawAppDriver;
            await tester.tap(InterestsTestScreen.nextBtn);
          },
        ),
      ];
}
