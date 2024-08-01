import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trading/stock_screen.dart';
import 'main_screen.dart';
import 'dataModels/create_stocks.dart';

class Trading extends StatefulWidget {
  const Trading({super.key});

  @override
  State<Trading> createState() {
    return _TradingGameState();
  }
}

class _TradingGameState extends State<Trading> {
  var _activeScreen = 'start-screen';
  var init = 0;
  int balance = (Random().nextInt(501) + 1000);

  void _goInStock(int entered) {
    setTheState();
    init = entered;
  }

  void setTheState() {
    setState(() {
      _activeScreen = 'stock-info-screen';
    });
  }

  void _exitStock() {
    setState(() {
      _activeScreen = 'start-screen';
    });
  }

  Widget ifButton(String state) {
    if (state == 'start-screen') {
      return const SizedBox(
        width: 0,
      );
    } else if (state == 'stock-info-screen') {
      return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: _exitStock,
      );
    } else {
      return const SizedBox(width: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    List stockList = stocksList;
    Widget screenWidget = TradingGame(
      _goInStock,
      playerBalance: balance,
      stockList: stockList,
    );

    void transaction(int bought, int init) {
      stockList[init].quantity -= bought;
      balance -= (stockList[init].price * bought as int);
      stockList[init].ownedByPlayer += bought;
    }

    if (_activeScreen == 'stock-info-screen') {
      screenWidget = StockScreen(
        transaction,
        init,
        balance,
        _goInStock,
        stockList,
      );
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: const Text('Trading Game'),
          automaticallyImplyLeading: false,
          leading: ifButton(_activeScreen)),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 255, 0),
            Color.fromARGB(255, 255, 50, 0),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: screenWidget,
      ),
    ));
  }
}
