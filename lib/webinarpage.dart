import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_screens/curved_navigation_bar.dart';

class Thewebinarpage extends StatefulWidget {
  @override
  _ThewebinarpageState createState() => _ThewebinarpageState();
}

class _ThewebinarpageState extends State<Thewebinarpage> {
  int _indexcurr = 1;

  final _tabs = <Widget>[
    Center(
      child: Text("Contacts"),
    ),
    Container(
      child: Text("Meets"),
    ),
    Container(
      child: Text("Global meets"),
    )
  ];

  Future<bool> _onBackpressed(){
    return showDialog(context: context,
    builder: (context)=>AlertDialog(
      title: Text("Are you sure"),
      content: Text("all ongoing meets will be terminated"),
      actions: <Widget>[
        FlatButton(onPressed: (){

          SystemNavigator.pop();


        },
        child: Text("Yes"),

        ),
        FlatButton(
          child: Text("No"),
          onPressed: (){
            Navigator.pop(context,false);
          },
        )
      ],
    )
    );
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackpressed,
      child: Scaffold(
        appBar: new AppBar(
          title: Text("Web meets",textAlign: TextAlign.center,),
          backgroundColor: Colors.teal,
          actions: [
            BackButtonIcon(

            ),
          ],
        ),
        backgroundColor: Colors.greenAccent,
        body: _tabs[_indexcurr],
        bottomNavigationBar: CurvedNavigationBar(

          height: 50,
          backgroundColor: Colors.greenAccent,
          items: <Widget>[
            Icon(
              Icons.contacts,size: 35,color: Colors.teal
              ,
            ),
            Icon(
              Icons.camera_enhance,size: 35,color: Colors.teal,
            ),
            Icon(
              Icons.language,size: 35,color: Colors.teal,

            ),
          ],
          onTap: (index) {
            setState(() {
              _indexcurr = index;
            });
          },
          animationDuration: Duration(
            milliseconds: 200,
          ),
        ),
      ),
    );
  }
}
