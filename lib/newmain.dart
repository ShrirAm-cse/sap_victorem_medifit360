import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'medifolder/doctor appointent/pages/doctors_page.dart';
import 'package:medifit360/medifolder/gym_mode/profile_screen.dart';
import 'package:medifit360/medifolder/DOC_APP.dart' as doctorappointment;
import 'package:medifit360/medifolder/MED_DEL.dart' as meddelivery;
import 'package:medifit360/medifolder/CallsContent.dart' as calls;



class NEWMyApp extends StatelessWidget {
  //final CollectionReference _user=FirebaseFirestore.instance.collection('users');
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      routes: {
        '/doctors': (context) => DoctorsPage(),
        '/accessibility': (context) => ProfileScreen()
      },
      debugShowCheckedModeBanner: false,
      title: 'MEDIFIT360',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyTabs(),
    );
  }
}

class MyTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyTabsState();
  }
}

class MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('MEDIFIT360'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.accessibility),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/accessibility');
                  }),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
            backgroundColor: Colors.blue,
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.badge)),
              Tab(icon: Icon(Icons.add_shopping_cart)),
              Tab(icon: Icon(Icons.ballot)),
            ]),
          ),
          body: TabBarView(children: [
            doctorappointment.HomePage(),
            meddelivery.HomeScreen(),
            calls.Calls()
          ]),
        ));
  }
}
