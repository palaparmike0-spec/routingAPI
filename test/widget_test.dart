import 'package:flutter_test/flutter_test.dart';

import 'package:routing/main.dart';

void main() {
  testWidgets('loads products from the remote API', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Sample'));
    await tester.pumpAndSettle();

    expect(find.text('Products'), findsOneWidget);
  });
}
