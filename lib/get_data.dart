  
import 'package:flutter/foundation.dart';



// Model
class DataKorona {
  final String name;
  final String positif;
  final String sembuh;
  final String meninggal;
  final String dirawat;

  DataKorona({
    @required this.name,
    @required this.positif,
    @required this.sembuh,
    @required this.meninggal,
    @required this.dirawat,
  });

  factory DataKorona.fromJson(Map<String, dynamic> json) {
    return DataKorona(
      name: json['name'] as String,
      positif: json['positif'] as String,
      sembuh: json['sembuh'] as String,
      meninggal: json['meninggal'] as String,
      dirawat: json['dirawat'] as String,
    );
  }
}

class CovidGlobal {
  final String countryRegion;
  final int confirmed;
  final int deaths;
  final int recovered;
  final int active;

  CovidGlobal({
    @required this.countryRegion,
    @required this.confirmed,
    @required this.deaths,
    @required this.recovered,
    @required this.active,
  });

  factory CovidGlobal.fromJson(Map<String, dynamic> json) {
    return CovidGlobal(
      countryRegion: json['attributes']['Country_Region'] as String,
      confirmed: json['attributes']['Confirmed'] as int,
      deaths: json['attributes']['Deaths'] as int,
      recovered: json['attributes']['Recovered'] as int,
      active: json['attributes']['Active'] as int,
    );
  }
}

// Provinsi
class CovidProvinsi {
  final String provinsi;
  final int kasus_posi;
  final int kasus_sem;
  final int kasus_meni;

  CovidProvinsi({
    @required this.provinsi,
    @required this.kasus_posi,
    @required this.kasus_sem,
    @required this.kasus_meni,
  });

  factory CovidProvinsi.fromJson(Map<String, dynamic> json) {
    return CovidProvinsi(
      provinsi: json['attributes']['Provinsi'] as String,
      kasus_posi: json['attributes']['Kasus_Posi'] as int,
      kasus_sem: json['attributes']['Kasus_Semb'] as int,
      kasus_meni: json['attributes']['Kasus_Meni'] as int,
    );
  }
}