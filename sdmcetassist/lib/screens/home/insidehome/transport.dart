import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideTransport/PlaceScreen1.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideTransport/PlaceScreen12.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideTransport/PlaceScreen5.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideTransport/PlaceScreen8.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideTransport/PlaceScreen9.dart';

class MainScreenTransport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'Transport', /*style:TextStyle(color:Colors.black)*/
        ),
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: ListView(
            // crossAxisCount: 3,
            children: <Widget>[
              Card(
                color: Colors.redAccent,
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.cloudSun,
                        color: Colors.black,
                      ),
                      Flexible(
                        child: Text(
                          "Morning",
                          style: new TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.center,
                        ),
                        fit: FlexFit.tight,
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlaceScreen8()),
                    );
                  },
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus,
                        size: 50.0,
                      ),
                      Flexible(
                        child: Text(
                          "8 o' clock Bus",
                          style: new TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.center,
                        ),
                        fit: FlexFit.tight,
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlaceScreen9()),
                    );
                  },
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus,
                        size: 50.0,
                      ),
                      Flexible(
                        child: Text(
                          "9 o' clock Bus",
                          style: new TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.center,
                        ),
                        fit: FlexFit.tight,
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "",
                style: new TextStyle(fontSize: 50.0),
                textAlign: TextAlign.center,
              ),
              Card(
                color: Colors.redAccent,
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.solidSun,
                        color: Colors.black,
                      ),
                      Flexible(
                        child: Text(
                          "Afternoon",
                          style: new TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.center,
                        ),
                        fit: FlexFit.tight,
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlaceScreen12()),
                    );
                  },
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus,
                        size: 50.0,
                      ),
                      Flexible(
                        child: Text(
                          "12.30 Bus",
                          style: new TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.center,
                        ),
                        fit: FlexFit.tight,
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlaceScreen1()),
                    );
                  },
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus,
                        size: 50.0,
                      ),
                      Flexible(
                        child: Text(
                          "1.30 BUS",
                          style: new TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.center,
                        ),
                        fit: FlexFit.tight,
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "",
                style: new TextStyle(fontSize: 50.0),
                textAlign: TextAlign.center,
              ),
              Card(
                color: Colors.redAccent,
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.cloud,
                        color: Colors.black,
                      ),
                      Flexible(
                        child: Text(
                          "Evening",
                          style: new TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.center,
                        ),
                        fit: FlexFit.tight,
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlaceScreen5()),
                    );
                  },
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus,
                        size: 50.0,
                      ),
                      Flexible(
                        child: Text(
                          "5 o' clock Bus",
                          style: new TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.center,
                        ),
                        fit: FlexFit.tight,
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  } //widget build
} // class ends
