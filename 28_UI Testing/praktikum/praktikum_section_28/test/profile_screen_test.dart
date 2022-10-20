import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum_section_28/screen/profile/profile_screen.dart';

void main() {
  testWidgets("Cek apakah ada widget text di about screen",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ProfileScreen(),
    ));
    expect(find.byType(Text), findsWidgets);
  });
}
