import 'package:flutter/material.dart';

class MainMenuPage extends StatefulWidget{
  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}


class _MainMenuPageState extends State<MainMenuPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: CircleAvatar(
          backgroundImage: AssetImage('img/ethicalhackerindonesia.jpg'),
        ),
        title: Text("ETHICAL HACKER INDONESIA"),
      ),
    
        body: Container(
          padding: EdgeInsets.only(top: 20),
          child: ListView(
          scrollDirection: Axis.vertical,
            children: <Widget>[    
         Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Center(
                  child: new Text(
                    "KAWAL CORONA",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
          )),
          Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 20.0),
                child: new Center(
                  child: new Text(
                    "Coronavirus Global & Indonesia Live Data",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                  ),
          )),
              Card(
                child: Container(
                  height: 80,  
                  color: Colors.red,
                  child: ListTile(
                    title: Text("Positif"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('img/iconpositif.png'),
                    ),
                  ),
                ),
              ),
                Padding(
            padding: EdgeInsets.all(1.0),
          ),
              
              Card(
                child: Container(
                  height: 80,  
                  color: Colors.lightGreen,
                  child: ListTile(
                    title: Text("Sembuh"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('img/iconsembuh.png'),
                    ),
                  ),
                ),
              ),
                Padding(
            padding: EdgeInsets.all(1.0),
          ),
              Card(
                child: Container(
                  height: 80,  
                  color: Colors.purpleAccent,
                  child: ListTile(
                    title: Text("Meninggal"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('img/iconmeninggal.png'),
                    ),
                  ),
                ),
              ),
                Padding(
            padding: EdgeInsets.all(1.0),
          ),
               Card(
                child: Container(
                  height: 80,  
                  color: Colors.orange,
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
              Container(
                margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                child: new Center(
                  child: new Text(
                    "Data Kasus Coronavirus Berdasarkan Provinsi",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                )),
             
           SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(label: Text("NO.")),
            DataColumn(label: Text("PROVINSI")),
            DataColumn(label: Text("POSITIF")),
            DataColumn(label: Text("SEMBUH")),
            DataColumn(label: Text("MENINGGAL")),
          ],
          rows: <DataRow>[
            DataRow(
                cells: <DataCell>[
                  DataCell(Text("1")),
                  DataCell(Text("DKI Jakarta")),
                  DataCell(Text("117,462")),
                  DataCell(Text("108,116")),
                  DataCell(Text("2,440")),
                ],
            ),
            DataRow(
                cells: <DataCell>[
                  DataCell(Text("2")),
                  DataCell(Text("Jawa Timur")),
                  DataCell(Text("56,070")),
                  DataCell(Text("49,995")),
                  DataCell(Text("4,007")),
                ],
            ),
            DataRow(
                cells: <DataCell>[
                  DataCell(Text("3")),
                  DataCell(Text("Jawa Barat")),
                  DataCell(Text("44,182")),
                  DataCell(Text("32,901")),
                  DataCell(Text("804")),
                ],
            ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                child: new Center(
                  child: new Text(
                    "Data Kasus Coronavirus Berdasarkan Global",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )),
            SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(label: Text("NO.")),
            DataColumn(label: Text("NEGARA")),
            DataColumn(label: Text("POSITIF")),
            DataColumn(label: Text("SEMBUH")),
            DataColumn(label: Text("MENINGGAL")),
          ],
          rows: <DataRow>[
            DataRow(
                cells: <DataCell>[
                  DataCell(Text("1")),
                  DataCell(Text("US")),
                  DataCell(Text("117,462")),
                  DataCell(Text("108,116")),
                  DataCell(Text("2,440")),
                ],
            ),
            DataRow(
                cells: <DataCell>[
                  DataCell(Text("2")),
                  DataCell(Text("India")),
                  DataCell(Text("56,070")),
                  DataCell(Text("49,995")),
                  DataCell(Text("4,007")),
                ],
            ),
            DataRow(
                cells: <DataCell>[
                  DataCell(Text("3")),
                  DataCell(Text("Brazil")),
                  DataCell(Text("44,182")),
                  DataCell(Text("32,901")),
                  DataCell(Text("804")),
                ],
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}