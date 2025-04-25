class Quote {
  final String quote;
  final String character;
  final String anime;

  Quote({required this.quote, required this.character, required this.anime});
}

final List<Quote> mockQuotes = [
  Quote(
    quote: "Power comes in response to a need, not a desire.",
    character: "Goku",
    anime: "Dragon Ball Z",
  ),
  Quote(
    quote: "Fear is not evil. It tells you what your weakness is.",
    character: "Gildarts Clive",
    anime: "Fairy Tail",
  ),
  Quote(
    quote: "A lesson without pain is meaningless.",
    character: "Edward Elric",
    anime: "Fullmetal Alchemist",
  ),
];
