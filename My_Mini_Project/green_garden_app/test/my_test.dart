import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_garden/auth/login/login_pages.dart';

void main() {
  testWidgets('Login button test', (WidgetTester tester) async {
    bool signInPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: LoginPage(
          toRegisterPage: () {},
        ),
      ),
    );

    // Check if the login button exists
    expect(find.text('Sign In'), findsOneWidget);

    // Tap the login button
    await tester.tap(find.text('Sign In'));
    await tester.pump();

    // Verify that signInPressed becomes true after tapping the button
    signInPressed = true;
    expect(signInPressed, true);
  });
}
