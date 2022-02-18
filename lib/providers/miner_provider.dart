import 'dart:convert' as convert;

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

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
    print(getJsonData);
    //   final nowPlayingResponse = NowPlayingResponse.fromJson(getJsonData);
    //   onDisplayMovies = nowPlayingResponse.results;
    // }
  }
}
