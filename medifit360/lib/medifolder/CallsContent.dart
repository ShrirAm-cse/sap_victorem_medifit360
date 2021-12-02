import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
          Container(
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  title: Text('X-Ray image',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    children: <Widget>[

                      Text('1 December 10:14am') ,
                    ],
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.download),
                      ],
                    ),
                  )),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 0.5,
                        color: Colors.grey,
                        style: BorderStyle.solid)),
              )),
          Container(
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  title: Text('Doc Prescription',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    children: <Widget>[

                      Text('1 December 11:00am')
                    ],
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.download),
                      ],
                    ),
                  )),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 0.5,
                        color: Colors.grey,
                        style: BorderStyle.solid)),
              )),
          Container(
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  title: Text('Blood report',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    children: <Widget>[

                      Text('1 December 11.30am')
                    ],
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.download),
                      ],
                    ),
                  )),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 0.5,
                        color: Colors.grey,
                        style: BorderStyle.solid)),
              )),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.upload),
        ));
  }
}
