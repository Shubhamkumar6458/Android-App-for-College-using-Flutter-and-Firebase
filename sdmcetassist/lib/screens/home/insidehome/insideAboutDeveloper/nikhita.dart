import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Nikhita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/nikhita.jpg',
            fit: BoxFit.contain,
          ),
          Text(
            "Nikhita Muragod",
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
            "Ph :7019718871",
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
                        launch('https://github.com/nikhita-png');
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
                        launch('https://wa.me/+917019718871');
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
