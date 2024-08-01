import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trading/dataModels/create_stocks.dart';
import 'WidgetModels/button.dart';

class StockScreen extends StatelessWidget {
  const StockScreen(this.exchange, this.init, this.playerMoney, this.refresh, stockList,
      {super.key});
  final int init;
  final int playerMoney;
  final void Function(int, int) exchange;
  final void Function(int) refresh;

  @override
  Widget build(BuildContext context) {
    List stockList = stocksList;
    final stockPrice = stockList[init].price;
    int amountOfThisStockOwned = stockList[init].ownedByPlayer;

    void buyStock(int i, int amountBought) {
      if (stockList[i].price * amountBought <= playerMoney) {
        exchange(amountBought, i);
      }
    }

    void sellStock(int i, int amountSold) {
      if (stockList[i].ownedByPlayer < amountSold) {

      }
      else {
        exchange(amountSold * -1, i);
      }
    }

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Player Balance: $playerMoney',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(199, 0, 0, 0),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'You own $amountOfThisStockOwned stocks.',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 26,
              fontWeight: FontWeight.w300,
            ),
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
                onTap: () {
                  buyStock(init, 1);
                  refresh(init);
                },
              ),
              const SizedBox(
                width: 12,
              ),
              SBButton(
                text: 'Sell',
                onTap: () {
                  sellStock(init, 1);
                  refresh(init);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
