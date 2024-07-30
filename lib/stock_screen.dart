import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dataModels/create_stocks.dart';
import 'WidgetModels/button.dart';

class StockScreen extends StatelessWidget {
  StockScreen({super.key, required this.init});
  final int init;
  final List stocks = stockList;
  final stockPrice = stockList[0].price;
  final ammountOfThisStock = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text('You own $ammountOfThisStock stocks.', 
          style:
            GoogleFonts.lato(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 26,
              fontWeight: FontWeight.w300,),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Current Value $stockPrice',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SBButton(
                text: 'Buy',
                onTap: () {},
              ),
              const SizedBox(
                width: 12,
              ),
              SBButton(
                text: 'Sell',
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
