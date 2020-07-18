import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();


  }

  Widget homePage() {
    return new Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.greenAccent,

      ),
      child: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 250.0),
            child: Center(
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 60.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child:
                Text("Webinar app",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,

                  style: TextStyle(
                  letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Modern'
                      ,decoration: TextDecoration.none,
                    fontSize: 50,

                  ),
                )

          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 150.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new OutlineButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.greenAccent,
                    highlightedBorderColor: Colors.white,
                    onPressed: () => gotoSignup(),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "SIGN UP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.white,
                    onPressed: () => gotoLogin(),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginPage() => new
    Scaffold(
    body:
    Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,

      ),
      child: new ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(120.0),
            child: Center(
              child: Icon(
                Icons.videocam,
                color: Colors.greenAccent,
                size: 50.0,
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: new Text(
                    "EMAIL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Colors.greenAccent,
                    width: 0.5,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration.collapsed(
                      border: InputBorder.none,
                      hintText: 'samplemail@live.com',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 24.0,
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: new Text(
                    "PASSWORD",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Colors.greenAccent,
                    width: 0.5,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration.collapsed(
                      border: InputBorder.none,
                      hintText: '*********',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 24.0,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: new FlatButton(
                  child: new Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    color: Colors.greenAccent,
                    onPressed: () => {


                    },
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
    );
  

  Widget signupPage() {
    return
      SafeArea(child:   Scaffold(
        body:

        Container(

            child:
            ListView(

              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 70),
                  alignment: Alignment.center,
                  child: Center(
                    child: Icon(Icons.recent_actors,
                    size: 80,
                  color: Colors.greenAccent,
                    ),

                  ),
                )
                ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                    padding: EdgeInsets.only(top: 50),
                      child: Text("Sign Up",
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    )
                  ],
                )
                ,Container(
                padding: EdgeInsets.only(left: 45,right: 45),
                  child:
                    TextField(

                    maxLength: 20
                    ,
                      style: TextStyle(
                        fontSize:17
                      ,
                      ),

                      cursorColor: Colors.greenAccent,
                      decoration: InputDecoration.collapsed(
                        hoverColor: Colors.greenAccent,
                        focusColor: Colors.greenAccent,
                        hintText: 'Name',
                        hintStyle: TextStyle(color: Colors.grey)

                      ),

                    ),

                ),Container(
                  padding: EdgeInsets.only(left: 45,right: 45),
                  child:
                  TextField(

                    maxLength: 20
                    ,
                    style: TextStyle(
                      fontSize:17
                      ,
                    ),

                    cursorColor: Colors.greenAccent,
                    decoration: InputDecoration.collapsed(

                        hoverColor: Colors.greenAccent,
                        focusColor: Colors.greenAccent,
                        hintText: 'Mail',
                        hintStyle: TextStyle(color: Colors.grey)

                    ),

                  ),

                ),Container(
                  padding: EdgeInsets.only(left: 45,right: 45),
                  child:
                  TextField(

                    maxLength: 20
                    ,
                    style: TextStyle(
                      fontSize:17
                      ,
                    ),

                    cursorColor: Colors.greenAccent,
                    decoration: InputDecoration.collapsed(
                        hoverColor: Colors.greenAccent,
                        focusColor: Colors.greenAccent,
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(color: Colors.grey)


                    ),

                  ),

                ),Container(
                  padding: EdgeInsets.only(left: 45,right: 45),
                  child:
                  TextField(

                    maxLength: 20
                    ,
                    style: TextStyle(
                      fontSize:17
                      ,
                    ),

                    cursorColor: Colors.greenAccent,
                    decoration: InputDecoration.collapsed(
                        hoverColor: Colors.greenAccent,
                        focusColor: Colors.greenAccent,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey)


                    ),obscureText: true,

                  ),

                ),Container(
                  padding: EdgeInsets.only(left: 45,right: 45),
                  child:
                  TextField(

                    maxLength: 20
                    ,
                    style: TextStyle(
                      fontSize:17
                      ,
                    ),

                    cursorColor: Colors.greenAccent,
                    decoration: InputDecoration.collapsed(
                        hoverColor: Colors.greenAccent,
                        focusColor: Colors.greenAccent,
                        hintText: 'Re-enter password',
                        hintStyle: TextStyle(color: Colors.grey)


                    ),
                    obscureText: true,
                  ),

                ),
                new Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                  alignment: Alignment.center,
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          color: Colors.greenAccent,
                          onPressed: () => gotoLogin(),
                          child: new Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 20.0,
                            ),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Expanded(
                                  child: Text(
                                    "Register",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            )


                )
        ,
      ),
      );

  }

  gotoLogin() {
    _controller.animateToPage(
      0,
      duration: Duration(milliseconds: 400),
      curve: Curves.decelerate,
    );
  }

  gotoSignup() {
    //controller_minus1To0.reverse(from: 0.0);
    _controller.animateToPage(
      2,
      duration: Duration(milliseconds: 400),
      curve: Curves.decelerate,
    );
  }

  PageController _controller = new PageController(initialPage: 1, viewportFraction: 1.0,keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Container(

        child: PageView(
          controller: _controller,
          children:[_loginPage(), homePage(), signupPage()],

        ));
  }
}
