class Player {
  final String name;
  double balance;
  List<Stock> portfolio;

  Player({required this.name, this.balance = 1000, this.portfolio = const []});
}

class Stock {
  //final String symbol;
  final String name;
  double price;
  int quantity;
  final List<int> path;

  Stock({required this.name, required this.price, required this.quantity, required this.path});
}

class Market {
  List<Stock> stocks;

  Market({required this.stocks});
}
