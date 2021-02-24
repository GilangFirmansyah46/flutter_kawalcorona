import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    
    primaryColor: Colors.green,
  ),
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("                 KAWAL CORONA"),
      ),
    
        body: Container(
          padding: EdgeInsets.only(top: 20),
          child: ListView(
          scrollDirection: Axis.vertical,
            children: <Widget>[
              Center(
                child: Text(
              'Coronavirus Global & Indonesia Live Data',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            )),
              Card(
                child: Container(
                  color: Colors.yellow,
                  child: ListTile(
                    title: Text("Positif"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('img/iconpositif.png'),
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  color: Colors.greenAccent,
                  child: ListTile(
                    title: Text("Sembuh"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('img/iconsembuh.png'),
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  color: Colors.red,
                  child: ListTile(
                    title: Text("Meninggal"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('img/iconmeninggal.png'),
                    ),
                  ),
                ),
              ),
               Card(
                child: Container(
                  color: Colors.blue,
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
              Center(
                child: Text(
              'Data Kasus CoronaVirus Berdasarkan Provinsi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
               DataTable(
              columns: [
                DataColumn(label: Text('No')),
                DataColumn(label: Text('Provinsi')),
                DataColumn(label: Text('Positif')),
                DataColumn(label: Text('Sembuh')),
                DataColumn(label: Text('Meninggal')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Jawa Barat')),
                  DataCell(Text('100')),
                  DataCell(Text('50')),
                  DataCell(Text('50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('Jawa Timur')),
                  DataCell(Text('150')),
                  DataCell(Text('40')),
                  DataCell(Text('40')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('Jawa Selatan')),
                  DataCell(Text('100')),
                  DataCell(Text('50')),
                  DataCell(Text('50')),
                ]),
              ],
            ),
            Center(
                child: Text(
              'Data Kasus CoronaVirus Berdasarkan Global',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
            DataTable(
              columns: [
                DataColumn(label: Text('No')),
                DataColumn(label: Text('Negara')),
                DataColumn(label: Text('Positif')),
                DataColumn(label: Text('Sembuh')),
                DataColumn(label: Text('Meninggal')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Indonesia')),
                  DataCell(Text('100')),
                  DataCell(Text('50')),
                  DataCell(Text('50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('India')),
                  DataCell(Text('100')),
                  DataCell(Text('50')),
                  DataCell(Text('50')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('Irlandia')),
                  DataCell(Text('100')),
                  DataCell(Text('50')),
                  DataCell(Text('50')),
                  ]),
              ],
          ),
              Container(),
            ],
          ),
    
    ),
    );
  }
}

// body: Column(
//         children: <Widget>[
//             Container(
//               height: 50,
//               width: double.infinity,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text(
//                     'Welcome To Kawal Covid',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black),
//                   ), 
//                 ),
//               ),
//           Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: <Widget>[
//                     Expanded(
//                       child: Container(
//                         height: 100,
//                         width: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           color: Colors.red),
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 12),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.vertical(
//                                   top: Radius.circular(8),
//                                   bottom: Radius.circular(8)),
//                                   color: Colors.red),
//                                   child: Row(
//                                     children: <Widget>[
//                                       Padding(
//                                         padding: const EdgeInsets.all(8),
//                                         child: Icon(
//                                           Icons.face,
//                                           size: 40,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 5,
//                                       ),
//                                       Column(
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         children: <Widget>[
//                                           Text(
//                                                 'Total Positif',
//                                                 style: TextStyle(fontSize: 16),
//                                               ),
//                                           Text(
//                                             '',
//                                             style: TextStyle(
//                                               fontSize: 32, color: Colors.black),
//                                               ),
//                                               Text(
//                                                 '',
//                                                 style: TextStyle(fontSize: 16),
//                                               ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
                                  
//                             )),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                   ],
//                 ),
//             ),
//             Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: <Widget>[
//                     Expanded(
//                       child: Container(
//                         height: 100,
//                         width: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           color: Colors.lightBlue),
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 12),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.vertical(
//                                   top: Radius.circular(8),
//                                   bottom: Radius.circular(8)),
//                                   color: Colors.lightBlue),
//                                   child: Row(
//                                     children: <Widget>[
//                                       Padding(
//                                         padding: const EdgeInsets.all(8),
//                                         child: Icon(
//                                           Icons.face,
//                                           size: 40,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 5,
//                                       ),
//                                       Column(
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         children: <Widget>[
//                                           Text(
//                                                 'Total Sembuh',
//                                                 style: TextStyle(fontSize: 16),
//                                               ),
//                                           Text(
//                                             '',
//                                             style: TextStyle(
//                                               fontSize: 32, color: Colors.black),
//                                               ),
//                                               Text(
//                                                 '',
//                                                 style: TextStyle(fontSize: 16),
//                                               ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),                            
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                           width: 5,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: <Widget>[
//                     Expanded(
//                       child: Container(
//                         height: 100,
//                         width: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           color: Colors.yellow),
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 12),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.vertical(
//                                   top: Radius.circular(8),
//                                   bottom: Radius.circular(8)),
//                                   color: Colors.yellow),
//                                   child: Row(
//                                     children: <Widget>[
//                                       Padding(
//                                         padding: const EdgeInsets.all(8),
//                                         child: Icon(
//                                           Icons.face,
//                                           size: 40,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 5,
//                                       ),
//                                       Column(
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         children: <Widget>[
//                                           Text(
//                                                 'Total Meninggal',
//                                                 style: TextStyle(fontSize: 16),
//                                               ),
//                                           Text(
//                                             '',
//                                             style: TextStyle(
//                                               fontSize: 32, color: Colors.black),
//                                               ),
//                                               Text(
//                                                 '',
//                                                 style: TextStyle(fontSize: 16),
//                                               ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),                            
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                           width: 5,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: <Widget>[
//                     Expanded(
//                       child: Container(
//                         height: 100,
//                         width: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                           color: Colors.green),
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 12),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.vertical(
//                                   top: Radius.circular(8),
//                                   bottom: Radius.circular(8)),
//                                   color: Colors.green),
//                                   child: Row(
//                                     children: <Widget>[
//                                       Padding(
//                                         padding: const EdgeInsets.all(8),
//                                         child: Icon(
//                                           Icons.flag,
//                                           size: 40,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 5,
//                                       ),
//                                       Column(
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         children: <Widget>[
//                                           Text(
//                                                 'Indonesia',
//                                                 style: TextStyle(fontSize: 16),
//                                               ),
//                                           Text(
//                                             '',
//                                             style: TextStyle(
//                                               fontSize: 32, color: Colors.black),
//                                               ),
//                                               Text(
//                                                 '',
//                                                 style: TextStyle(fontSize: 16),
//                                               ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),                            
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                           width: 5,
//                           ),
//                         ],
//                       ),
//                     ),
//            ],
//           ),




//           Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Image.asset(
//                       'img/masker.jpg',
//                       width: 125,
//                     ),
//                     Image.asset(
//                       'img/mencucitangan.jpg',
//                       width: 100,
//                     ),
//                     Image.asset(
//                       'img/jagajarak.png',
//                       width: 100,
//                     ),
//                   ],
//                 )