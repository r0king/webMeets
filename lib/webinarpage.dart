import 'package:flutter/material.dart';
class Thewebinarpage extends StatefulWidget {
  @override
  _ThewebinarpageState createState() => _ThewebinarpageState();
}

class _ThewebinarpageState extends State<Thewebinarpage> {

  int _indexcurr=1;
  final _tabs = <Widget>[
    Center(
      child: Text("Contacts"),
    ),
    Container(
      child: Text("Meets"),
    )
  ,

    Container(
      child: Text("Global meets"),
    )
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:_tabs[_indexcurr],


        bottomNavigationBar:
        BottomNavigationBar(
            currentIndex: _indexcurr,
            type: BottomNavigationBarType.shifting,

            backgroundColor: Colors.tealAccent,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.teal,
                icon: Icon(
                  Icons.contacts,
                ),
                title: Text("Contacts"),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.teal,
                icon: Icon(
                  Icons.camera_enhance,
                ),
                title: Text("Meets"),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.teal,
                  icon: Icon(
                    Icons.language,
                  ),
                  title: Text("Global"),
              ),
            ]
        ,onTap: (index){
              setState(() {
                _indexcurr=index;
              });
        },


        ),
      ),
    );
  }
}

