import 'package:flutter_test/flutter_test.dart';
import 'package:uchi_gare/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const UchiGareApp());
    expect(find.text('モデル'), findsOneWidget);
  });
}
