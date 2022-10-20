import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum_section_28/model/api/food_api.dart';
import 'package:praktikum_section_28/screen/home/home_screen.dart';
import 'package:praktikum_section_28/screen/home/home_screen_duplicate.dart';
import 'package:praktikum_section_28/screen/home/home_view_model/home_bloc.dart';

void main() {
  testWidgets("Test widget appbar home screen duplicate",
      (WidgetTester tester) async {
    await tester.pumpWidget(const HomeScreenDuplicate());
    expect(find.byType(Text), findsOneWidget);
  });
}
