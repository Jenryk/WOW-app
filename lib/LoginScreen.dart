import 'package:flutter/material.dart';

Color _primaryColor = Colors.deepPurple;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
                color: _primaryColor, //new Color.fromRGBO(255, 0, 0, 0.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6,
                      spreadRadius: 0.5,
                      offset: Offset(0, 5))
                ])),
        Positioned(
          top: 75,
          left: MediaQuery.of(context).size.width / 2 - 25,
          child: FlutterLogo(
            colors: Colors.amber,
            size: 50,
          ),
        ),
        Positioned(
          top: 150,
          left: 35,
          child: Container(
            decoration: new BoxDecoration(
                color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6,
                      spreadRadius: 0.5,
                      offset: Offset(0, 5))
                ]),
            width: 320,
            height: 350,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                  child: Text("WOW",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey[800],
                          fontFamily: "Roboto")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Text(
                    "first party auth",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                            child: SizedBox(
                              width: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'CC',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 185,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Mobile Number',
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: InkWell(
                    onTap: () {
                      print("CLicked");
                    },
                    hoverColor: Colors.indigoAccent,
                    splashColor: Colors.indigoAccent,
                    child: Container(
                      decoration: new BoxDecoration(
                          color: Colors
                              .deepPurple, //new Color.fromRGBO(255, 0, 0, 0.0),
                          borderRadius: new BorderRadius.only(
                              bottomRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0))),
                      width: 320,
                      height: 46,
                      child: Center(
                        child: Text(
                          "CONTINUE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Text(
              "ALREADY HAVE AN ACCOUNT",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400, color: Colors.deepPurple),
            ),
          ),
        ),
      ],
    );
  }
}
