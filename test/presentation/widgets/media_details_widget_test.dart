import 'package:flutter/material.dart';
import 'package:flutter_anime_app/presentation/widgets/media_details_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MediaDetailsWidget Test', () {
    testWidgets('Displays title and value correctly', (WidgetTester tester) async {
      // Arrange
      const String testTitle = 'Test Title';
      const String testValue = 'This is a very long value that should be truncated';

      // Act
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: MediaDetailsWidget(
              title: testTitle,
              value: testValue,
            ),
          ),
        ),
      );

      // Assert
      expect(find.text(testTitle), findsOneWidget); // Проверяем, что заголовок отображается
      expect(find.textContaining(testValue, findRichText: true), findsOneWidget); // Проверяем, что значение отображается

      // Проверяем, что значение обрезается (тестируем TextOverflow.ellipsis)
      final textFinder = find.byType(Text).at(1); // Второй текстовый виджет - это значение
      final textWidget = tester.widget<Text>(textFinder);
      expect(textWidget.maxLines, 1); // Убеждаемся, что установлено maxLines: 1
      expect(textWidget.overflow, TextOverflow.ellipsis); // Убеждаемся, что используется ellipsis
    });
  });
}