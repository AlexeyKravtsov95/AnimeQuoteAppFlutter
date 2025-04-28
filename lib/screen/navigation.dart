import 'package:anime_quote_app/screen/anime_quote_list_screen.dart';
import 'package:anime_quote_app/screen/anime_single_quote_screen.dart';
import 'package:anime_quote_app/widget/tab_bar.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;
  List pages = [
    AnimeSingleQuoteScreen(),
    AnimeQuoteListScreen(),
    AnimeQuoteListScreen(),
    AnimeQuoteListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Good evening"),
      ), // TODO: Add logic change phrase on the time
      bottomNavigationBar: BottomBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: pages[currentIndex],
    );
  }
}
