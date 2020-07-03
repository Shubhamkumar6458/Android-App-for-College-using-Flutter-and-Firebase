import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Chinfye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: ListView(
        children: <Widget>[
          Image.asset('assets/ChinmayeeJoshi.jpg'),
          Text(
            "Chinmayee Joshi",
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
            "Ph :7975854141",
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
                    margin: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        launch('https://github.com/chinmayee143');
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
                    margin: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://www.linkedin.com/in/chinmayee-chinnu-30b979189');
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
                    margin: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        launch('https://www.instagram.com/chinfye/');
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
                    margin: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        launch('https://wa.me/+917975854141');
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
