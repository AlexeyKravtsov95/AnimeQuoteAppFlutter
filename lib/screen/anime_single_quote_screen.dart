import 'package:anime_quote_app/model/quote.dart';
import 'package:anime_quote_app/widget/icon_button.dart';
import 'package:flutter/material.dart';

class AnimeSingleQuoteScreen extends StatelessWidget {
  const AnimeSingleQuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quote = mockQuotes[0].quote;
    final author = mockQuotes[0].character;
    final anime = mockQuotes[0].anime;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Text(
                '"$quote"',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Text(
                "- $author",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Text("from $anime", style: TextStyle(color: Colors.grey)),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconAnimeButton(icon: Icon(Icons.skip_previous_outlined)),
                IconAnimeButton(icon: Icon(Icons.favorite_outline)),
                IconAnimeButton(icon: Icon(Icons.skip_next_outlined)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
