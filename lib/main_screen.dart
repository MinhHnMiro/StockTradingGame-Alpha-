import 'package:flutter/material.dart';
import 'dataModels/create_stocks.dart';
import 'WidgetModels/button.dart';
import 'package:google_fonts/google_fonts.dart';

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
    const currentStock = 0;
    final stockName = stockList[currentStock].name;

    return MaterialApp(
      home: SizedBox(
        width: double.infinity,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Trading Game'),
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 255, 0),
                  Color.fromARGB(255, 255, 50, 0),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Player Balance: 1',
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(199, 0, 0, 0),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Stock list
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StockButton(
                      text: stockName,
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SBButton(text: 'Buy', onTap: () {}),
                    const SizedBox(
                      width: 10,
                    ),
                    SBButton(text: 'Sell', onTap: () {}),
                  ],
                  // Buy/Sell buttons
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
