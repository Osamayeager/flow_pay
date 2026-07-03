import 'package:flutter_test/flutter_test.dart';
import 'package:flow_pay/main.dart';

void main() {
  testWidgets('FlowPayApp smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FlowPayApp());

    // Verify that Home dashboard renders user profile showcase
    expect(find.text('Osama Yeager'), findsOneWidget);
  });
}
