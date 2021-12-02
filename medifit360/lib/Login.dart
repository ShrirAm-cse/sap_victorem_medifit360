import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'db services/auth.dart';
import 'db shared/loading.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final AuthService _auth = AuthService();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
bool loading =false;
  String _email='';
  String _password='';
  String error='';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.jpg'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(

            children: [

              Container(
                padding: EdgeInsets.only(left: 40, top: 140),
                child: Text(
                  'Welcome\nBack',
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),

              SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery
                            .of(context)
                            .size
                            .height * 0.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 35, right: 35),
                  ),
                        Container(
                          child: Column(
                            children: [
                              Form(
                                key: _formkey,

                                child: Column(
                                    children: [
                                      TextFormField(
                                        onChanged:(val){
                                          setState(() =>
                                            _email=val
                                          );
                                        },
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                            fillColor: Colors.grey.shade100,
                                            filled: true,
                                            hintText: "Email",
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius
                                                  .circular(10),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      TextFormField(
                                        onChanged: (val){
                                          setState(() =>
                                          _password=val
                                          );
                                        },
                                        style: TextStyle(),
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            fillColor: Colors.grey.shade100,
                                            filled: true,
                                            hintText: "Password",
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius
                                                  .circular(10),
                                            )),
                                      ),
                                    ]
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sign in',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w700),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xff4c505b),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () async{
                                    if(_formkey.currentState!.validate())  {
                                      setState(() => loading = true);
                                      dynamic result = await _auth.signInWithEmailAndPassword(_email, _password);
                                      if(result == null) {
                                        setState(() {
                                          loading = false;
                                          error = 'Could not sign in with those credentials';
                                        });
                                      }
                                    }
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward,
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'register');
                              },
                              child: Text(
                                'Sign Up',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff4c505b),
                                    fontSize: 18),
                              ),
                              style: ButtonStyle(),
                            ),
                            TextButton(
      child: Text(
      'Forgot Password',
      style: TextStyle(
        decoration: TextDecoration.underline,
        color: Color(0xff4c505b),
        fontSize: 18,
      ),
    ),
                                onPressed: () async {
      if(_formkey.currentState!.validate()) {
        setState(() => loading = true);
        dynamic result = await _auth.signInWithEmailAndPassword(_email, _password);
        if(result == null) {
    setState(() {
    loading = false;
    error = 'Could not sign in with those credentials';
    });
    }
      } }
                                ),
                          ],
                        ),
                      ],
    ),



              ),
              ) ]
        ),
      ),
    ) ;
    }}
