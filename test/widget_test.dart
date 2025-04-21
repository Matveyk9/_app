// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:static_resources_app/main.dart';

void main() {
  testWidgets('Проверка отображения изображений и текста', (WidgetTester tester) async {
    // Строим наше приложение и заставляем его рендериться.
    await tester.pumpWidget(MyApp());

    // Проверка, что изображение и текст отображаются.
    expect(find.byType(Image), findsNWidgets(3)); // Проверяем, что три изображения отображаются
    expect(find.text('Используем кастомный шрифт!'), findsOneWidget); // Проверка наличия текста
  });
}

