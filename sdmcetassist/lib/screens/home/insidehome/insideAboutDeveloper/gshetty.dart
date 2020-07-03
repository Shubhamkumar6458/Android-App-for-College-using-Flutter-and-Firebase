import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GShetty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: ListView(
        children: <Widget>[
          Image.asset('assets/ganeshshetty.jpeg'),
          Text(
            "Shetty Ganeshprasad",
            style: new TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: Colors.black),
            textAlign: TextAlign.center,
          ),
          Text(
            "Computer Science Department, SDMCET",
            style: new TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
                color: Colors.black),
            textAlign: TextAlign.center,
          ),
          Text(
            "Ph :7900129925\n",
            style: new TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
                color: Colors.black),
            textAlign: TextAlign.center,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        launch('https://shettyganeshprasad.netlify.app/');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.public,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        launch('https://dev.to/ganeshshetty98');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.dev,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        launch('https://www.instagram.com/_g4nesh.shetty_/');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.purple,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://www.facebook.com/ganeshshetty.santhosh');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.facebookSquare,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        launch('https://github.com/ganeshShetty98');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.github,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://www.linkedin.com/in/shettyganeshprasad/');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        launch('https://twitter.com/_G4neshshetty_');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        launch('https://wa.me/+917900129925');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.whatsappSquare,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
