import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hux/hux.dart';

void main() {
  testWidgets('HuxKBD renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: HuxKBD(shortcut: '⌘K'),
        ),
      ),
    );

    expect(find.text('⌘K'), findsOneWidget);
    expect(find.byType(HuxKBD), findsOneWidget);
  });
}
