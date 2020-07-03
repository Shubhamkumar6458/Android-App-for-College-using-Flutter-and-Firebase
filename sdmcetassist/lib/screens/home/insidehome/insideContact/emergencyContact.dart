import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[100],
      child: ListView(
        children: <Widget>[
          Text(
            "Emergency contact",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30,
                decoration: TextDecoration.underline),
          ),
          Text(
            "( Tap on number to call directly )",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 20,
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:08362447465");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "SDMCET",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no: 0836-2447465",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:100");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Police",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no: 100",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:08362442496");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Fire",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no: 101 / 0836-2442496",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9448915301");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Ambulance",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9448915301",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:08362477777");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Medical Emergency\n(SDM Hospital)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:0836-2477777",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:08362477088");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Ambulance\n(SDM Hospital)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:0836-2477088",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9986660550");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Chief Hostel Warden",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9986660550",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
