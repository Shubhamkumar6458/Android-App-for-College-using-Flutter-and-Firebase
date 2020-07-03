import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Shubham extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/ShubhamKumar.jpg',
            fit: BoxFit.fill,
          ),
          Text(
            "Shubham Kumar",
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
            "Ph :7903278178",
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
                        launch('https://github.com/Shubhamkumar6458');
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
                            'https://www.linkedin.com/in/shubham-kumar-8ba277193/');
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
                        launch('https://www.instagram.com/_shubham_kumar_00/');
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
                        launch(
                            'https://www.facebook.com/profile.php?id=100010257605542');
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
                    margin: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        launch('https://wa.me/+917033014444');
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
