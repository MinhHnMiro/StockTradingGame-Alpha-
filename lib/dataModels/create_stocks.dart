import 'classes.dart';
import 'dart:math';

List generateList() {
  var stockList = [];
  var lengthOfList = Random().nextInt(51) + 20;
  int randomn36 = Random().nextInt(3) + 4;
  for (int i = 0; i < randomn36; i++) {
    String iString = '$i';
    int addPriceVar = (Random().nextInt(11) + 15);
    stockList.add(
      Stock(
        name: 'Stock $iString',
        price: addPriceVar,
        quantity: Random().nextInt(51) + 150,
        path: [addPriceVar.toInt() - 
          (Random().nextInt(6) - 5),
        ],
        ownedByPlayer: Random().nextInt(10)
      ),
    );
  }
  for (int i = 0; i < randomn36; i += 1) {
    for (int j = 0; j < lengthOfList + 1; j++) {
      stockList[i].path.add(stockList[i].path[j] - (Random().nextInt(6) - 5));
    }
  }
  return stockList;
}

List stocksList = generateList();