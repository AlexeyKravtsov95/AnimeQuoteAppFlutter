import 'package:anime_quote_app/model/quote.dart';
import 'package:flutter/material.dart';

class CardQuoteWidget extends StatelessWidget {
  final Quote quote;
  const CardQuoteWidget({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '"${quote.quote}"',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 8),
            Text(
              "- ${quote.character}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("from ${quote.anime}", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
