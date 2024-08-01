import 'button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateRow extends StatelessWidget {
  const CreateRow({super.key, required this.stockName, required this.startTrading, required this.stockValue, required this.init});

  final String stockName;
  final void Function() startTrading;
  final int stockValue;
  final int init;

  @override
  Widget build(BuildContext context){
    return Row(
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
      );
  }
}