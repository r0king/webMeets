import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_screens/login_screen.dart';
import 'package:flutter_login_screens/webinarpage.dart';
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _Welcome(),
    );
  }
}

class _Welcome extends StatefulWidget {
  @override
  __WelcomeState createState() => __WelcomeState();
}

class __WelcomeState extends State<_Welcome> {
  bool logedin=true;

  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
          backgroundColor: Colors.greenAccent,
          body:
          Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(

                  child: Text(


                    "Web Meet",
                    style: TextStyle(

                        fontSize: 50,
                      color: Colors.white,
                      fontFamily: 'Modern'
                    ),

                  ),padding: EdgeInsets.all(10),

                ),
                IconButton(
                  icon:Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 60,
                )
                  ,alignment: Alignment.center,
                  hoverColor: Colors.green,
                  padding: EdgeInsets.only(bottom: 35,right: 35,top:10),
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        if (logedin==false) {
                          return LoginScreen();
                        }
                        else {
                          return Thewebinarpage();
                        }
                        }


                    ));
                  },
                ),
              ],
            )
            ,
          )

        )

    );
  }
}
