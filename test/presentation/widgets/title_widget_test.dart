import 'package:flutter/cupertino.dart';
import 'package:flutter_anime_app/presentation/widgets/title_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const testTitle = 'Test Title Text';

  testWidgets('TitleWidget should display correct title with styles', (WidgetTester tester) async {
    await tester.pumpWidget(
      const CupertinoApp(
        home: TitleWidget(title: testTitle),
      ),
    );

    final titleFinder = find.text(testTitle);
    expect(titleFinder, findsOneWidget);

    final textWidget = tester.widget<Text>(titleFinder);
    expect(textWidget.textAlign, TextAlign.center);
    expect(textWidget.style?.fontWeight, FontWeight.bold);
    expect(textWidget.style?.fontSize, 18);

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.only(left: 15, right: 15));

    expect(
      find.ancestor(
        of: titleFinder,
        matching: find.byType(Padding),
      ),
      findsOneWidget,
    );
  });

  testWidgets('TitleWidget should handle empty title', (WidgetTester tester) async {
    await tester.pumpWidget(
      const CupertinoApp(
        home: TitleWidget(title: ''),
      ),
    );

    expect(find.text(''), findsOneWidget);
  });
}