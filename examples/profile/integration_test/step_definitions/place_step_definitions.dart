import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../test_screen/screens/place_test_screen.dart';
import '../../test_screen/screens/profile_test_screen.dart';

abstract class PlaceStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я выбираю город {string}$'),
          (city, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            tester
                .widget<TextField>(PlaceTestScreen.placeOfResidenceField)
                .controller
                ?.text = city;
            await tester.pump();
          },
        ),
    when<FlutterWidgetTesterWorld>(
      RegExp(r'Я перехожу далее$'),
          (context) async {
        final tester = context.world.rawAppDriver;
        await tester.tap(ProfileTestScreen.nextBtn);
      },
    ),
      ];

}
