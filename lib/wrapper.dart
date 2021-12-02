//import 'package:brew_crew/models/user.dart';
//import 'package:brew_crew/screens/authenticate/authenticate.dart';
//import 'package:brew_crew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:medifit360/newmain.dart';
import 'package:provider/provider.dart';

import '../oldmain.dart';
import 'db models/commonuser.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<CommonUser?>(context);

    // return either the Home or Authenticate widget
    if (user == null){
      return oldmain();
    } else {
      return NEWMyApp();
    }

  }
}