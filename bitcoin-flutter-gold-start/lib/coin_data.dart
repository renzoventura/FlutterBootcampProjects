import 'dart:convert';
import 'package:bitcoin_ticker/crypto_card.dart';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker/';

class CoinData {
  Future<Map<String, int>> getCoinData(String selectedCurrency) async {
    //TODO 4: Use a for loop here to loop through the cryptoList and request the data for each of them in turn.
    Map<String, String> requestHeaders = {
      'x-ba-key': 'MGYxOTg2NjEyOGJjNDRlYjliOTE2MDYyY2ViODAxNmM'
    };
    Map<String, int> cryptoRates = {};
    for (String crypto in cryptoList) {
      String requestURL = '$bitcoinAverageURL$crypto$selectedCurrency';
      http.Response response = await http.get(requestURL,headers: requestHeaders);
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double lastPrice = decodedData['last'];
        cryptoRates.addAll({crypto:lastPrice.toInt()});
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
      //TODO 5: Return a Map of the results instead of a single value.
    }
    return cryptoRates;
  }
}
