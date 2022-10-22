import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum_section_28/screen/home/home_screen_duplicate.dart';

void main() {
  testWidgets("Test widget tulisan Home Screen", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreenDuplicate(),
    ));
    expect(find.text("Home Screen"), findsWidgets);
  });

  testWidgets("Test widget card di home screen", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreenDuplicate(),
    ));
    expect(find.byType(Card), findsWidgets);
  });

  testWidgets("Test widget listview di home screen",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreenDuplicate(),
    ));
    expect(find.byType(ListView), findsWidgets);
  });
}
