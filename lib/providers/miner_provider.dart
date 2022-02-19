import 'dart:convert' as convert;

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/result_model.dart';

class MinerProvider extends ChangeNotifier {
  String _baseUrl = 'eth.2miners.com';
  String _wallet =
      'nano_3ppbo1dzsof1qjukkhy17udmajdbfwh9k5uy4zg4458gimzy4u9dw11kzctt';

  MinerProvider() {
    print('2MinersApp inicializado');
    getWalletAccount();
  }

  Future<String> _getJsonData(String endPoint) async {
    final url = Uri.https(_baseUrl, endPoint, {});
    final response = await http.get(url);
    return response.body;
  }

  getWalletAccount() async {
    final getJsonData = await _getJsonData('api/accounts/${_wallet}');
    // print(getJsonData);
    final accountResponse = AccountResponse.fromJson(getJsonData);
    //   onDisplayMovies = nowPlayingResponse.results;
    print(accountResponse.hashrate / 1000000);
    print(accountResponse.stats.balance);
    print(accountResponse.stats.paid);
    for (var i = 0; i < accountResponse.payments.length; i++) {
    print(accountResponse.payments[i].tx);
    }


  }
}
