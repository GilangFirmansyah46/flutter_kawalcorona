import 'dart:convert';

import 'package:flutter_kawalcorona/get_data.dart';
import 'package:http/http.dart';

class GetDataIndonesia {
  final String url = "https://api.kawalcorona.com/indonesia";
  Future<List<DataKorona>> getKoronaData() async {
    Response res = await get(url);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<DataKorona> koronaData =
          body.map((dynamic item) => DataKorona.fromJson(item)).toList();
      return koronaData;
    } else {
      throw "tidak bisa mendapat data";
    }
  }
}

class DataGlobal {
  final String url = "https://api.kawalcorona.com/";
  Future<List<CovidGlobal>> getDataGlobal() async {
    Response res = await get(url);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<CovidGlobal> dataGlobal =
          body.map((dynamic item) => CovidGlobal.fromJson(item)).toList();
      return dataGlobal;
    } else {
      throw "tidak bisa mendapat data";
    }
  }
}

class DataIndo {
  final String url = "https://api.kawalcorona.com/indonesia/provinsi";
  Future<List<CovidProvinsi>> getDataIndo() async {
    Response res = await get(url);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<CovidProvinsi> dataIndo =
          body.map((dynamic item) => CovidProvinsi.fromJson(item)).toList();
      return dataIndo;
    } else {
      throw "tidak bisa mendapat data";
    }
  }
}