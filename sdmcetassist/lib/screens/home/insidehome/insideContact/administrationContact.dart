import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AdministrationContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[100],
      child: ListView(
        children: <Widget>[
          Text(
            "Administration's contact",
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
                launch("tel: 08362447465");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Admin Section",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:- (0836) 2255619 / 2447465 / 2448327 / 2435307 / 24474664",
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
                launch("tel:08362255619");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Admission",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:(0836) 2255619/\n2464699",
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
            margin: EdgeInsets.all(0.0),
            child: InkWell(
              onTap: () {
                launch("mailto:admissions@sdmcet.ac.in?");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "admissions@sdmcet.ac.in",
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
          Text(
            "",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9448057823");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Principal",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9448057823",
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
            margin: EdgeInsets.all(0.0),
            child: InkWell(
              onTap: () {
                launch("mailto:principal@sdmcet.ac.in?");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "principal@sdmcet.ac.in",
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
          Text(
            "",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:7900129925");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Dean Administration",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:7900129925",
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
                launch("tel:9448057823");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Dean Academic Program & Research and Development",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:94dhbdgn23",
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
                launch("tel:9448057823");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Dean Infrastructure Planning & Development",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:stjnfdh823",
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
                launch("tel:9448057823");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Controller of Examinations",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:94fsbdfgb",
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
                launch("tel:+919986660550");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Anti-Ragging Helpline",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9448057823",
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
