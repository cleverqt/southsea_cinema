import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';

void main() {
  testWidgets('Home page renders title and booking buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(const SouthseaCinemaApp());
    expect(find.text('Southsea Cinema'), findsOneWidget);
    expect(find.text('BOOK NOW'), findsNWidgets(2));
  });

  testWidgets('Tap BOOK NOW and navigate to movie details',
      (WidgetTester tester) async {
    await tester.pumpWidget(const SouthseaCinemaApp());
    await tester.tap(find.text('BOOK NOW').first);
    await tester.pumpAndSettle();
    expect(find.text('NE ZHA 2'), findsWidgets);
  });

  testWidgets('Add to order shows feedback message',
      (WidgetTester tester) async {
    await tester.pumpWidget(const SouthseaCinemaApp());
    await tester.tap(find.text('BOOK NOW').first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Add to order'));
    await tester.pump();
    expect(find.text('1 ticket(s) added'), findsOneWidget);
  });
}
