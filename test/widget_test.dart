import 'package:flutter_test/flutter_test.dart';
import 'package:flow_pay/main.dart';

void main() {
  testWidgets('FlowPayApp auth smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FlowPayApp());

    // Verify that initial screen displays Flow Pay title and Log In button
    expect(find.text('Flow Pay'), findsOneWidget);
    expect(find.text('Log In'), findsOneWidget);
  });
}
