import 'package:flutter/material.dart';
import 'WidgetModels/create_row.dart';
import 'package:google_fonts/google_fonts.dart';

class TradingGame extends StatelessWidget {
  const TradingGame(this.startTrading,
      {super.key, required this.playerBalance, required this.stockList});

  final void Function(int) startTrading;
  final int playerBalance;
  final List stockList;
  // ignore: prefer_typing_uninitialized_variables

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Column(
        children: [
          Text(
            'Player Balance: $playerBalance',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(199, 0, 0, 0),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          CreateRow(
            stockName: stockList[0].name,
            startTrading: () {
              startTrading(0);
              },
            stockValue: stockList[0].price,
            init: 0,
          ),
          CreateRow(
            stockName: stockList[1].name,
            startTrading: () {
              startTrading(1);
              },
            stockValue: stockList[1].price,
            init: 0,
          ),
          CreateRow(
            stockName: stockList[2].name,
            startTrading: () {
              startTrading(2);
              },
            stockValue: stockList[2].price,
            init: 0,
          ),
        ],
      ),
    );
  }
}
