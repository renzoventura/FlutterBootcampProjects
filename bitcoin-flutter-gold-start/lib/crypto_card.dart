import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CryptoCard extends StatelessWidget {
  CryptoCard({this.value, this.selectedCurrency, this.cryptoCurrency});

  final int value;
  final String selectedCurrency;
  final String cryptoCurrency;



  @override
  Widget build(BuildContext context) {
    //TODO 1: Refactor this Padding Widget into a separate Stateless Widget called CryptoCard, so we can create 3 of them, one for each cryptocurrency.
    //TODO 2: You'll need to able to pass the selectedCurrency, value and cryptoCurrency to the constructor of this CryptoCard Widget.

    return Padding(
        padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
        child: Card(
          color: Colors.lightBlueAccent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
            child: Text(
              '1 $cryptoCurrency = $value $selectedCurrency',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
  }

}
