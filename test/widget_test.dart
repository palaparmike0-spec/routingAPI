import 'package:flutter_test/flutter_test.dart';

import 'package:routing/main.dart';

void main() {
  testWidgets('shows a fruit list on the sample screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Sample'));
    await tester.pumpAndSettle();

    expect(find.text('Apple'), findsOneWidget);
    expect(find.text('Mango'), findsOneWidget);
  });
}
