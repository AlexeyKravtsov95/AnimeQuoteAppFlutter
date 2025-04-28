import 'package:anime_quote_app/widget/navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const QuoteAnimeApp());
}

class QuoteAnimeApp extends StatelessWidget {
  const QuoteAnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationPage(),
    );
  }
}
