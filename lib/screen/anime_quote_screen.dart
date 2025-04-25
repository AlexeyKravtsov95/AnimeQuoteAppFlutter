import 'package:anime_quote_app/model/quote.dart';
import 'package:anime_quote_app/widget/card_quote.dart';
import 'package:flutter/material.dart';

class AnimeQuoteScreen extends StatelessWidget {
  const AnimeQuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anime Quotes"),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
          itemCount: mockQuotes.length,
          itemBuilder: (context, index) {
            final quotes = mockQuotes[index];
            return CardQuoteWidget(quote: quotes);
          },
        ),
      ),
    );
  }
}
