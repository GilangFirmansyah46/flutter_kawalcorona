import 'package:flutter/material.dart';
import 'package:flutter_kawalcorona/get_data.dart';
import 'package:flutter_kawalcorona/http_service.dart';


class MainMenuPage extends StatefulWidget {
  
   
  @override
  _MainMenuPage createState() => _MainMenuPage();
}


class _MainMenuPage extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {

     final DataIndo _getIndo = DataIndo();
     final DataGlobal _getGlobal = DataGlobal();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        toolbarHeight: 70,
        leading: CircleAvatar(
          backgroundImage: AssetImage('img/ethicalhackerindonesia.jpg'),
        ),
        title: Text("ETHICAL HACKER INDONESIA"),
      ),
      body: ListView(
          padding: EdgeInsets.only(top: 20),
          scrollDirection: Axis.vertical,
            children: <Widget>[
                        Padding(
            padding: EdgeInsets.all(6.0),
          ),
                   Center(
                child: Text(
              'KAWAL CORONA',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            )),
             Padding(
            padding: EdgeInsets.all(12.0),
          ),
                   Center(
                child: Text(
              'Coronavirus Global & Indonesia Live Data',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
             Padding(
            padding: EdgeInsets.all(6.0),
          ),
              Card(
                child: Container(
                    decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFFFF0000),
                        Color(0xFFFF6347),
                        Color(0xFFF08080),
                      ],
                    ),
                  ),
                  height: 80,  
                  child: ListTile(
                    title: Text("Positif"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('img/iconpositif.png'),
                    ),
                  ),
                ),
              ),
                Padding(
            padding: EdgeInsets.all(6.0),
          ),
              
              Card(
                child: Container(
                    decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF008000),
                        Color(0xFF3CB371),
                        Color(0xFF66CDAA),
                      ],
                    ),
                  ),
                  height: 80,  
                  child: ListTile(
                    title: Text("Sembuh"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('img/iconsembuh.png'),
                    ),
                  ),
                ),
              ),
                Padding(
            padding: EdgeInsets.all(6.0),
          ),
              Card(
                child: Container(
                
                    decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF9932CC),
                        Color(0xFFBA55D3),
                        Color(0xFF9370DB),
                      ],
                    ),
                  ),
                  height: 80,  
                  child: ListTile(
                    title: Text("Meninggal"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('img/iconmeninggal.png'),
                    ),
                  ),
                ),
              ),
                Padding(
            padding: EdgeInsets.all(6.0),
          ),
               Card(
                child: Container(
                    decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFFFF7500),
                        Color(0xFFFFAC00),
                        Color(0xFFFFAF50),
                      ],
                    ),
                  ),
                  height: 80,  
                  child: ListTile(
                    title: Text("Indonesia"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('img/iconindonesia.png'),
                    ),
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'img/masker.jpg',
                      width: 125,
                    ),
                    Image.asset(
                      'img/mencucitangan.jpg',
                      width: 100,
                    ),
                    Image.asset(
                      'img/jagajarak.png',
                      width: 100,
                    ),
                  ],
                ),
            
          
                         Padding(
            padding: EdgeInsets.all(14.0),
           
          ),
             
           Center(
                child: Text(
              'Data Kasus CoronaVirus Berdasarkan Provinsi di Indonesia',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
             Padding(
            padding: EdgeInsets.all(8.0),
          
          ),

          FutureBuilder(
            future: _getIndo.getDataIndo(),
            builder: (BuildContext context, AsyncSnapshot<List<CovidProvinsi>> snapshot) {
              if (snapshot.hasData) {
                List<CovidProvinsi> dataIndo = snapshot.data;
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text('Provinsi')
                    ),
                    DataColumn(
                      label: Text('Positif')
                    ),
                    DataColumn(
                      label: Text('Sembuh')
                    ),
                    DataColumn(
                      label: Text('Meninggal')
                    ),
                  ], rows:  dataIndo
                      .map(
                        (CovidProvinsi dataIndo) => DataRow(cells:[
                          DataCell(Text(dataIndo.provinsi)),
                          DataCell(Text(dataIndo.kasus_posi.toString())),
                          DataCell(Text(dataIndo.kasus_sem.toString())),
                          DataCell(Text(dataIndo.kasus_meni.toString())),
                        ])).toList(),
                  ),
                );
                
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),

                         Padding(
            padding: EdgeInsets.all(16.0),
           
          ),
             
           Center(
                child: Text(
              'Data Kasus CoronaVirus Global',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
             Padding(
            padding: EdgeInsets.all(6.0),
          
          ),
                      FutureBuilder(
                      future: _getGlobal.getDataGlobal(),
                      builder: (BuildContext context,
                          AsyncSnapshot<List<CovidGlobal>> snapshot) {
                        if (snapshot.hasData) {
                          List<CovidGlobal> dataGlobal = snapshot.data;
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            
                            child: DataTable(
                              columns: [
                                DataColumn(label: Text('Negara')),
                                DataColumn(label: Text('Positif')),
                                DataColumn(label: Text('Sembuh')),
                                DataColumn(label: Text('Meninggal')),
                              ],
                              rows: dataGlobal
                                  .map((CovidGlobal dataGlobal) =>
                                      DataRow(cells: [
                                        DataCell(Text(
                                            dataGlobal.countryRegion)),
                                        DataCell(Text(
                                            dataGlobal.confirmed.toString())),
                                        DataCell(Text(
                                            dataGlobal.recovered.toString())),
                                        DataCell(Text(
                                            dataGlobal.deaths.toString())),
                                      ]))
                                  .toList(),
                            ),
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
    ],
    ),
    ),);
  }
}
