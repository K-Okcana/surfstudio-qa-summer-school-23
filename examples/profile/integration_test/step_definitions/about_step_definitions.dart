import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../test_screen/screens/about_test_screen.dart';

abstract class AboutStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я заполняю заметку о себе {string}$'),
          (about, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(AboutTestScreen.aboutField, about);
            await tester.pump();
          },
        ),
        when<FlutterWidgetTesterWorld>(
          RegExp(r'Я перехожу далее$'),
          (context) async {
            final tester = context.world.rawAppDriver;
            await tester.tap(AboutTestScreen.saveBtn);
          },
        ),
      ];
}
