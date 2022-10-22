import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum_section_28/screen/profile/profile_screen.dart';

void main() {
  testWidgets("Cek apakah ada widget text di profile screen",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ProfileScreen(),
    ));
    expect(find.byType(Text), findsWidgets);
  });

  testWidgets("Cek apakah ada Tulisan Halaman Profile di Profle screen",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ProfileScreen(),
    ));
    expect(find.text("Halaman Profile"), findsWidgets);
  });

  testWidgets("Cek apakah ada widget Center di Profle screen",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ProfileScreen(),
    ));
    expect(find.byType(Center), findsWidgets);
  });
}
