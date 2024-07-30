import 'package:flutter/material.dart';
import 'dataModels/create_stocks.dart';
import 'WidgetModels/button.dart';
import 'package:google_fonts/google_fonts.dart';

class TradingGame extends StatelessWidget {
  const TradingGame(this.startTrading, {super.key});

  final void Function() startTrading;

  @override
  Widget build(BuildContext context) {
    const currentStock = 0;
    final stockName = stockList[currentStock].name;
    var stockValue = stockList[currentStock].price;

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
              onTap: startTrading,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              'Current Price: $stockValue',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
          // Buy/Sell buttons
        )
      ],
    );
  }
}
