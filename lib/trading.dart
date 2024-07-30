import 'package:flutter/material.dart';
import 'package:trading/stock_screen.dart';
import 'main_screen.dart';

class Trading extends StatefulWidget {
  const Trading({super.key});

  @override
  State<Trading> createState() {
    return _TradingGameState();
  }
}

class _TradingGameState extends State<Trading> {
  var _activeScreen = 'start-screen';

  void _goInStock() {
    setState(() {
      _activeScreen = 'stock-info-screen';
    });

    void exitStock() {
      setState(() {
        _activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = TradingGame(
      _goInStock,
    );

    if (_activeScreen == 'stock-info-screen') {
      screenWidget = StockScreen(
        init: 1,
      );
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Trading Game'),
      ),
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
