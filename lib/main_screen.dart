import 'package:flutter/material.dart';
import 'dataModels/create_stocks.dart';
import 'WidgetModels/button.dart';

class TradingGame extends StatefulWidget {
  const TradingGame({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TradingGameState createState() => _TradingGameState();
}

class _TradingGameState extends State<TradingGame> {
  @override
  void initState() {
    super.initState();
    // Initialize game with initial player and market data
  }

  @override
  Widget build(BuildContext context) {
    final stockName = stockList[0].name;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Trading Game'),
        ),
        body: Column(
          children: [
            const Text('Player Balance: 1'),
            // Stock list
            Row(
              children: [
                Text(
                  stockName,
                  style: const TextStyle(
                    color: Color.fromARGB(0, 0, 0, 0),
                  ),
                ),
                SBButton(text: 'Buy', onTap: () {}),
                SBButton(text: 'Sell', onTap: () {}),
              ],
              // Buy/Sell buttons
            )
          ],
        ),
      ),
    );
  }
}
