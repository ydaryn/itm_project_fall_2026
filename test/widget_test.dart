import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:itm_project/main.dart';

void main() {
  testWidgets('navigation opens login and registration', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Welcome to ITM Project'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.person_outline));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Log in').first);
    await tester.pumpAndSettle();
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Create an account').first);
    await tester.pumpAndSettle();
    expect(find.text('Name'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
  });
}
