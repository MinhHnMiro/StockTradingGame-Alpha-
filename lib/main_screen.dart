import 'package:flutter/material.dart';
import 'dataModels/create_stocks.dart';
import 'WidgetModels/button.dart';
import 'package:google_fonts/google_fonts.dart';

class TradingGame extends StatefulWidget {
  const TradingGame(this.startTrading, {super.key});

  final void Function() startTrading;

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

    return Column(
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
    );
  }
}
