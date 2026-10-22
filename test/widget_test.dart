import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';

void main() {
  testWidgets('Home page renders title, movie cards and booking buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(const SouthseaCinemaApp());

    expect(find.text('Welcome to Southsea Cinema'), findsOneWidget);
    expect(find.text('NE ZHA 2'), findsOneWidget);
    expect(find.text('PLEASANT GOAT'), findsOneWidget);
    expect(find.text('Book'), findsNWidgets(2));
  });
}
