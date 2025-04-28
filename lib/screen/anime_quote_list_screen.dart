import 'package:anime_quote_app/model/quote.dart';
import 'package:anime_quote_app/widget/card_quote.dart';
import 'package:flutter/material.dart';

class AnimeQuoteListScreen extends StatelessWidget {
  const AnimeQuoteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mockQuotes.length,
      itemBuilder: (context, index) {
        final quotes = mockQuotes[index];
        return CardQuoteWidget(quote: quotes);
      },
    );
  }
}
