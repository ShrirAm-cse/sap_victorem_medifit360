import 'package:medifit360/wrapper.dart';
import 'package:medifit360/db services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:medifit360/db models/user.dart';
import 'package:firebase_core/firebase_core.dart';


import 'db models/commonuser.dart';

//void main() => runApp(MyApp());
void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return StreamProvider<CommonUser?>.value(
      initialData: CommonUser(uid:'0',val:0),
      value: AuthService().user,
      child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Wrapper(),
      ),
    );
  }
}