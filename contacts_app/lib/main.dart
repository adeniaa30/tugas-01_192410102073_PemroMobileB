import 'dart:ffi';

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(72, 185, 147, 1),
      ),
      home: MyHomePage(title: 'My Contacts'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  TextEditingController searchController = new TextEditingController();

  // void initState() {
  //   super.initState();
  //   searchController.addListener(() {
  //     filterContacts();
  //   });
  // }

  // List<String> namaFilter = [];
  List<String> nama = <String>[
    'Claritha Canda Putri',
    'Dewi Kusumaningtyas',
    'Evinda Dindayanti Arief',
    'Fitri Dwi Alfina',
    'Nabila Rachmawati Dwi Utomo Dwi Nabila Rachmawati',
    'Nafi Ibdiyana Musyarrifani',
    'Nanda Maya Safitri',
    'Nurul Hapsari Adenia',
    'Rahadyan Mohammad Akram',
    'Riris Damajanti',
    'Shintia Anggi Dwi Pramietha Sari Dewi',
    'Tania Ardiyanti Pratami',
  ];

  // filterContacts() {
  //   List<String> _contacts = [];
  //   _contacts.addAll(nama);
  //   if (searchController.text.isNotEmpty) {
  //     _contacts.retainWhere((nama) {
  //       String searchTerm = searchController.text.toLowerCase();
  //       String contactName = nama.toLowerCase();
  //       return contactName.contains(searchTerm);
  //     });

  //     setState(() {
  //       namaFilter = _contacts;
  //     });
  //   }
  // }

  List<String> email = <String>[
    'claritha@gmail.com',
    'tyas@gmail.com',
    'pindang@gmail.com',
    'fitri@gmail.com',
    'ner@gmail.com',
    'nafi@gmail.com',
    'mayas@gmail.com',
    'nurulhapsari1995@gmail.com',
    'dyan@gmail.com',
    'riris@gmail.com',
    'anggi@gmail.com',
    'tania@gmail.com'
  ];

  List<String> nomer = <String>[
    '08565356',
    '08345556',
    '08186356',
    '08821656',
    '08453256',
    '08786856',
    '08568156',
    '08098556',
    '08333856',
    '08555456',
    '08789556',
    '08800556',
  ];

  // void filterContact(String searchTerm) {
  //   List<String> tmpSearchList = List<String>();

  //   tmpSearchList.addAll(nama);
  //   if (searchTerm.isNotEmpty) {
  //     List<String> tmpList = List<String>();
  //     tmpSearchList.forEach((element) {
  //       if()
  //     })
  //   } else {}
  // }

  @override
  Widget build(BuildContext context) {
    bool isSearching = searchController.text.isNotEmpty;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title:
            Text(widget.title, style: GoogleFonts.balsamiqSans(fontSize: 15)),
      ),
      body: Center(
        heightFactor: 1.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  'https://pro2-bar-s3-cdn-cf.myportfolio.com/591d04f256aa901b6f95d035a778faaa/b58ee850-08a3-482f-9d7f-88f2ab6236cf_rw_1200.png?h=87b7e6ed5e1aef17d1c886c73ab4af0f'),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Nurul Hapsari Adenia",
                textAlign: TextAlign.center,
                style: GoogleFonts.balsamiqSans(fontSize: 12)),
            new Container(
              padding: EdgeInsets.all(3.0),
              height: 40,
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    prefix: Icon(Icons.search),
                    labelText: 'Search'),
                style: TextStyle(fontSize: 12),
                // onChanged: (value) {},
              ),
            ),
            new Container(
                padding: EdgeInsets.only(top: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  // color: Colors.cyan[100],
                ),
                height: 404,
                child: Column(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: ListView.separated(
                          itemCount: nama.length,
                          itemBuilder: (BuildContext context, index) {
                            // Contact nama = isSearching == true
                            //     ? namaFilter[index]
                            //     : nama[index];
                            return Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundColor:
                                        Color.fromRGBO(72, 185, 147, 1),
                                    child: Text('${nama[index][0]}',
                                        style: GoogleFonts.balsamiqSans(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    // backgroundImage: NetworkImage(
                                    //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYHYatK3If9pIyokNqd4HQzpUaoyE5b142_w&usqp=CAU'),
                                    radius: 25,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${nama[index]}',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.balsamiqSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '${email[index]}',
                                      style: GoogleFonts.balsamiqSans(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '${nomer[index]}',
                                      style: GoogleFonts.balsamiqSans(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                )),
                              ],
                            );
                          },
                          // ignore: non_constant_identifier_names
                          separatorBuilder: (BuildContext, index) {
                            return Divider();
                          },
                        )),
                  ],
                )),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          setState(() {
            // nama.sort((a, b) => a.compareTo(b));
            nama = nama.reversed.toList();
            email = email.reversed.toList();
            nomer = nomer.reversed.toList();
            // email.sort((a, b) => a.compareTo(b));
            // nomer.sort((a, b) => a.compareTo(b));
          });
        },
        child: new Icon(Icons.sort_by_alpha_rounded),
        backgroundColor: Color.fromRGBO(72, 185, 147, 1),
        foregroundColor: Colors.white,
      ),
    );
  }
}
