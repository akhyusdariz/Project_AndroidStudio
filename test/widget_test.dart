import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:untitled/main.dart';

void main() {
  testWidgets('Home page smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify app title and main elements exist
    expect(find.text('Koleksi Terbaru'), findsOneWidget);
    expect(find.text('Parfum Lokal & Timteng'), findsOneWidget);
    expect(find.text('Rekomendasi Produk'), findsOneWidget);

    // Verify navigation bar is present
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Kategori'), findsOneWidget);
  });

  testWidgets('Product cards are displayed', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify some product names appear
    expect(find.text('Rasasi Hawas Ice'), findsOneWidget);
    expect(find.text('HMNS Farhampton'), findsOneWidget);
    expect(find.text('Afnan 9PM Rebel'), findsOneWidget);
  });

  testWidgets('Menu grid items are displayed', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify category menu items
    expect(find.text('Timteng'), findsAtLeastNWidgets(1));
    expect(find.text('Lokal'), findsAtLeastNWidgets(1));
    expect(find.text('Parfum Pria'), findsAtLeastNWidgets(1));
    expect(find.text('Parfum Wanita'), findsAtLeastNWidgets(1));
    expect(find.text('Best Seller'), findsAtLeastNWidgets(1));
    expect(find.text('Bundling'), findsAtLeastNWidgets(1));
  });
}
