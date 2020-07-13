import 'package:flutter/material.dart';
import 'package:flutter_login_screens/login_screen.dart';
import 'package:flutter_login_screens/webinarpage.dart';
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  bool logedin=false;

  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
          backgroundColor: Colors.greenAccent,
          body:
          Center(

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(

                  child: Text(


                    "Web Meet",
                    style: TextStyle(

                        fontSize: 50,
                      color: Colors.white,
                      fontFamily: 'Action'
                    ),

                  ),padding: EdgeInsets.only(left: 90,top: 30),

                ),
                IconButton(
                  icon:Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 60,
                )
                  ,alignment: Alignment.center,
                  hoverColor: Colors.green,
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
          ,
        )
    );
  }
}
