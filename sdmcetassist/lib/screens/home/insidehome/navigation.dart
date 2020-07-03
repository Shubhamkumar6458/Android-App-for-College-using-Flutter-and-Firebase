import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Navigation extends StatefulWidget {
  Navigation() : super();
  final String title = "Dropdown Menu";

  @override
  DropDownState createState() => DropDownState();
}

class Source {
  int id;
  String name;
  Source(this.id, this.name);

  static List<Source> getSource() {
    return <Source>[
      Source(0, 'ADMIN Block'),
      Source(1, 'CSE'),
      Source(2, 'ISE'),
      Source(3, 'E&C'),
      Source(4, 'E&E'),
      Source(5, 'CHEMICAL'),
      Source(6, 'MECHANICAL'),
      Source(7, 'CIVIL'),
      Source(8, 'DEPT. OF CHEM'),
      Source(9, 'DEPT. OF PHYSIC'),
      Source(10, 'DEPT. OF MATHS'),
    ];
  }
}

class Destination {
  int id;
  String name;
  Destination(this.id, this.name);

  static List<Destination> getDestination() {
    return <Destination>[
      Destination(0, 'ADMIN Block'),
      Destination(1, 'CSE'),
      Destination(2, 'ISE'),
      Destination(3, 'E&C'),
      Destination(4, 'E&E'),
      Destination(5, 'CHEMICAL'),
      Destination(6, 'MECHANICAL'),
      Destination(7, 'CIVIL'),
      Destination(8, 'DEPT. OF CHEM'),
      Destination(9, 'DEPT. OF PHYSIC'),
      Destination(10, 'DEPT. OF MATHS'),
    ];
  }
}

class DropDownState extends State<Navigation> {
  List<Source> _source = Source.getSource();
  List<Destination> _destination = Destination.getDestination();

  List<DropdownMenuItem<Source>> _dropDownMenuItemsSource;
  List<DropdownMenuItem<Destination>> _dropDownMenuItemsDestination;

  Source _selectedSource;
  Destination _selectedDestination;

  @override
  void initState() {
    _dropDownMenuItemsSource = buildDropdownmenuItemsSource(_source);
    _dropDownMenuItemsDestination =
        buildDropdownmenuItemsDestination(_destination);

    _selectedSource = _dropDownMenuItemsSource[0].value;
    _selectedDestination = _dropDownMenuItemsDestination[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Source>> buildDropdownmenuItemsSource(List sources) {
    List<DropdownMenuItem<Source>> itemsSource = List();
    for (Source source in sources) {
      itemsSource.add(DropdownMenuItem(
        value: source,
        child: Text(source.name),
      ));
    }
    return itemsSource;
  }

  List<DropdownMenuItem<Destination>> buildDropdownmenuItemsDestination(
      List destinations) {
    List<DropdownMenuItem<Destination>> items = List();
    for (Destination destination in destinations) {
      items.add(DropdownMenuItem(
        value: destination,
        child: Text(destination.name),
      ));
    }
    return items;
  }

  onChangeDropdownItemSource(Source selectedSource) {
    setState(() {
      _selectedSource = selectedSource;
    });
  }

  onChangeDropdownItemDestination(Destination selectedDestination) {
    setState(() {
      _selectedDestination = selectedDestination;
    });
  }

  Widget selectCollection() {
    String _source = "${_selectedSource.name}";
    String _destination = "${_selectedDestination.name}";

    if (_source == "CSE" && _destination == "ISE") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            launch(
                "https://drive.google.com/open?id=12KwEfThDNWH1LWfR8tSnS7ADyhZlnQnt");
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "CSE <-> ISE",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    } else if (_source == "ISE" && _destination == "CSE") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            //   Navigator.push(
            //   context, MaterialPageRoute(builder: (context) => CSEtoENC()));
            launch(
                "https://drive.google.com/open?id=1_nzsYLuNog7mm6rApSOL9t5vsarqLb73");
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "ISE <-> CSE",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    } else if (_source == "E&C" && _destination == "CSE") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            //   Navigator.push(
            //   context, MaterialPageRoute(builder: (context) => CSEtoENC()));
            launch(
                "https://drive.google.com/open?id=17fMt4jCqzQkSBHrVgbz0lVLvPnVuDTa4");
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "E&C <-> CSE",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    } else if (_source == "CSE" && _destination == "E&C") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            //   Navigator.push(
            //   context, MaterialPageRoute(builder: (context) => CSEtoENC()));
            launch(
                "https://drive.google.com/open?id=14qcwCGB1MCnXLcPLM2wAn0eBn3vQ7VnN");
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "CSE <-> E&C",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    } else if (_source == "CIVIL" && _destination == "CSE") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            //   Navigator.push(
            //   context, MaterialPageRoute(builder: (context) => CSEtoENC()));
            launch(
                "https://drive.google.com/open?id=1t-9OakdMaGhWbCkIRtoqyn4GEBMXYg5L");
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "CIVIL <-> CSE",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    } else {
      if (_source == "CSE" && _destination == "CIVIL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              launch(
                  "https://drive.google.com/open?id=1HmX2RhzY6pjpGogLEAIoDv3-hdlP5i3K");
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CSE <-> CIVIL",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } else {
        if (_source == "CSE" && _destination == "CHEMICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1V7ja4oaz3mGusffvd9WcoYzFGtaOdwkx");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CSE <-> CHEMICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "CHEMICAL" && _destination == "CSE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1ZM-jAzjiDXg78Nw5fROaBi4P238pZ4J4");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CHEMICAL <-> CSE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "CSE" && _destination == "MECHANICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CSE <-> MECHANICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "MECHANICAL" && _destination == "CSE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "MECHANICAL <-> CSE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "DEPT. OF PHYSIC" && _destination == "CSE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1UbwITqjnEKYyLRAi-qhSdGvbb5MH1qHS");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF PHYSIC <-> CSE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "CSE" && _destination == "DEPT. OF PHYSIC") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1W6xvYjNcE9jcVAJDjPo4_mJ2rTzelaNA");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CSE <-> DEPT. OF PHYSIC",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "DEPT. OF MATHS" && _destination == "CSE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1EtT6HXzYFPlvd5T2gAsNpiSS-NRKshl_");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF MATHS <-> CSE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "CSE" && _destination == "DEPT. OF MATHS") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1NM9gwUqWRVHo-3ZFHJClZ-ELTWgHMoMt");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CSE <-> DEPT. OF MATHS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "E&E" && _destination == "CSE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1ITrFjuelKgzD7i9BG1bhHi6kcCnmcQF4");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&E <-> CSE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "CSE" && _destination == "E&E") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1kD_UV6LUD__qnRO94dYEDXP64EexeZGY");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CSE <-> E&E",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "DEPT. OF CHEM" && _destination == "CSE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1OW71kpdDiKKJOUEfhcjFm7dMo9_MFrQ1");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF CHEM <-> CSE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "CSE" && _destination == "DEPT. OF CHEM") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1sxPB7s4I7SURkab_2m9VKkbrbBboeGii");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CSE <-> DEPT. OF CHEM",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } /////end of cse to  all////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        else if (_source == "E&C" && _destination == "ISE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1UMWjAejV1XEHYtd76X7Ji1pELxBKjMjy");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&C <-> ISE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "ISE" && _destination == "E&C") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1VCnEDLDtuQ-Nu6SGhaH1y0g7N7oJ0-hJ");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ISE <-> E&C",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (_source == "E&E" && _destination == "ISE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1P9LJ_mmh88BVfvhH2RkBpSAK6m7mVuHZ");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&E <-> ISE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ISE" && _destination == "E&E") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1R8raykyuUrQKbfJPKrkXRSNR0uV20qRE");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ISE <-> E&E",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CHEMICAL" && _destination == "ISE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1gQpvDLluLgnOAbul8mf47AJP1tvHJl0b");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CHEMICAL <-> ISE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ISE" && _destination == "CHEMICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1euzGEcplCWGp2YmvYIxYsJOTOiNX8RqD");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ISE <-> CHEMICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "MECHANICAL" && _destination == "ISE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "MECHANICAL<-> ISE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ISE" && _destination == "MECHANICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ISE <-> MECHANICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CIVIL" && _destination == "ISE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1vNBCxpNTrmxvAmXx353Meo1IbwcfgGeO");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CIVIL <-> ISE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ISE" && _destination == "CIVIL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1JPitJ3yuw0rg5MKEzVKT6dRDQrWBOVbn");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ISE <-> CIVIL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF CHEM" && _destination == "ISE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1XIxPUMj0QNgdNRVPCVVZtLWurhOlzfR2");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF CHEM <-> ISE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ISE" && _destination == "DEPT. OF CHEM") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1a7jOEkLuqgH-5dRu8ZxWXwFdUSey1phT");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ISE <-> DEPT. OF CHEM",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF PHYSIC" && _destination == "ISE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1qp3GqGQv23tTekqbBwFDH3qegUdrzXpJ");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF PHYSIC <-> ISE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ISE" && _destination == "DEPT. OF PHYSIC") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1t5Cp_AkB9AG_JHbT0XigJDg3KQ8LI81J");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ISE <-> DEPT. OF PHYSIC",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF MATHS" && _destination == "ISE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1Rrwsxzd-zignABTx-v8aZyUw6utZ6EVk");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF MATHS <-> ISE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ISE" && _destination == "DEPT. OF MATHS") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1AKSlI9Ynb_AyDRVIzQ0XkMJhuzu0bjG1");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ISE <-> DEPT. OF MATHS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } ////end of all ise combination if else ladder
        if (_source == "E&E" && _destination == "E&C") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1n3DlimTxaa-o6MFqaOIsPv4F8MiM_Yu4");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&E <-> E&C",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&C" && _destination == "E&E") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1NBDJhQLY8MSyCXQq8HoKMgYTdTwcqHmA");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&C <-> E&E",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CHEMICAL" && _destination == "E&C") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1Moz6oxctGmjNnXpXpDaxLmNuSgqH8xeU");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CHEMICAL <-> E&C",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&C" && _destination == "CHEMICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1asCkDdAFMQgNaTxYL-ldJSA4U0_rebtx");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&C <-> CHEMICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "MECHANICAL" && _destination == "E&C") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "MECHANICAL <-> E&C",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&C" && _destination == "MECHANICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&C <-> MECHANICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CIVIL" && _destination == "E&C") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=15iIm_Cc_xD6ZUtkdYeW0SdiGiQPAJXLQ");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CIVIL <-> E&C",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&C" && _destination == "CIVIL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1ohJfphsPz85VIbf1a3mssWmyQRylL9oz");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&C <-> civil",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF CHEM" && _destination == "E&C") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1OOZJj4KltRLyhAt-P6gaDDUoBRtQ0w21");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF CHEM <-> E&C",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&C" && _destination == "DEPT. OF CHEM") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=17cM3-IwBrNYwIUv5sjW0snCrpQoxkrRx");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&C <-> DEPT. OF CHEM",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF PHYSIC" && _destination == "E&C") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=15c7q34iqXcXlzWWu_txz3UqxmOfrZJdV");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF PHYSIC <-> E&C",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&C" && _destination == "DEPT. OF PHYSIC") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1cpXhLyWk3jGIpdn2e8alQM-woF5f3Ug7");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&C <-> DEPT. OF PHYSIC",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF MATHS" && _destination == "E&C") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=19Kd67GtN2hCJznBWjFLWt_hd1iYEr9hu");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF MATHS <-> E&C",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&C" && _destination == "DEPT. OF MATHS") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1O3OBKPBQ5M7q9b9IbUvXO27IfVZRCKxA");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&C <-> DEPT. OF MATHS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CHEMICAL" && _destination == "E&E") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1tsBJXA3aBjZhC6gZuYvq3CGaj9kANajg");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CHEMICAL <-> E&E",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&E" && _destination == "CHEMICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1KHXOdiUw3QPAhrivdFIqDHjVH5psHyA6");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&E <-> CHEMICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CIVIL" && _destination == "E&E") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1z4OzFXhLS8DHD_5CiCSJQV5Ur9ap2cPO");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CIVIL <-> E&E",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&E" && _destination == "CIVIL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1MmAdQ9pEIKU2tDrj1zieD_TYe_YXWkI2");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&E <-> CIVIL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF MATHS" && _destination == "E&E") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=11MekL5dGRe2eBQB9nKH4fuXxJhQqr9eZ");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF MATHS <-> E&E",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&E" && _destination == "DEPT. OF MATHS") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1MtuXfsRdBaTes6ld0K6lxVIY0xg5opSe");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&E <-> DEPT. OF MATHS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "MECHANICAL" && _destination == "E&E") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "MECHANICAL <-> E&E",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&E" && _destination == "MECHANICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&E <-> MECHANICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF PHYSIC" && _destination == "E&E") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1MxCuiFFTLDwHEfLp8Hc2GA3QG_BhcNxb");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF PHYSIC <-> E&E",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&E" && _destination == "DEPT. OF PHYSIC") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1LCUQ1G2FDiO9qSGc17ZnDCcelI9KROmS");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&E <-> DEPT. OF PHYSICS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF CHEM" && _destination == "E&E") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1tEyg1Xl1idvUT06a8_N81g-kDx7TN-2d");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF CHEM <-> E&E ",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&E" && _destination == "DEPT. OF CHEM") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=17SrqMWp69fykD7EaaasIAN5kIfXJ3BcK");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&E <-> DEPT. OF CHEM",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } //END OF ENE///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        if (_source == "CHEMICAL" && _destination == "MECHANICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CHEMICAL <-> MECHANICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "MECHANICAL" && _destination == "CHEMICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "MECHANICAL <-> CHEMICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CHEMICAL" && _destination == "CIVIL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1C72d5D-5SkuNKl1GgAKxD5Fced1pgNpd");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CHEMICAL <-> CIVIL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CIVIL" && _destination == "CHEMICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1KTs55xu0aXRYo-H8Gg2Wig2YGguv-I6R");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CIVIL <-> CHEMICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CHEMICAL" && _destination == "DEPT. OF CHEM") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1rgi4mnBtzNGsdwE07LlW6PF7glA5Zppg");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CHEMICAL <-> DEPT. OF CHEM",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF CHEM" && _destination == "CHEMICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1ZoaCN4OoKWTt-_1ulWPnXb5r--WAf0Bi");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF CHEM <-> CHEMICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CHEMICAL" && _destination == "DEPT. OF PHYSIC") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1Q_ZEqwO5X_IpVOCIs8UbX7pQxY6fpzTL");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CHEMICAL <-> DEPT. OF PHYSIC",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF PHYSIC" && _destination == "CHEMICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1jF5P_smjlvPdkszgfJzGsJ5xwTauQp9l");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF PHYSIC <-> CHEMICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CHEMICAL" && _destination == "DEPT. OF MATHS") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1zxATLpHk9LV1o5RQX8DqRV5i6Yeh9bx8");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CHEMICAL <-> DEPT. OF MATHS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF MATHS" && _destination == "CHEMICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1VEqotrQnG_FGXeSBKL6pmEK6cNVmsZXQ");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF MATHS <-> CHEMICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } //END OF CHEMICAL
        if (_source == "MECHANICAL" && _destination == "DEPT. OF CHEM") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "MECHANICAL <-> DEPT. OF CHEM",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF CHEM" && _destination == "MECHANICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF CHEM <-> MECHANICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "MECHANICAL" && _destination == "CIVIL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "MECHANICAL <-> CIVIL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CIVIL" && _destination == "MECHANICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CIVIL <-> MECHANICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "MECHANICAL" && _destination == "DEPT. OF PHYSIC") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "MECHANICAL <-> DEPT. OF PHYSIC",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF PHYSIC" && _destination == "MECHANICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF PHYSIC<-> MECHANICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "MECHANICAL" && _destination == "DEPT. OF MATHS") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "MECHANICAL <-> DEPT. OF MATHS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF MATHS" && _destination == "MECHANICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF MATHS <-> MECHANICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } ////END OF MECHANICAL////////////////////////////////////////////////////////////////////////////////
        //adding admin possibility
        if (_source == "ADMIN Block" && _destination == "CSE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1kVcAl6Fs6zSmEKv14b6SP7-drJo4qkQQ");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ADMIN <-> CSE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ADMIN Block" && _destination == "E&C") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1qgITXYr2b1eAE_CBYNHsgRTD5msid7WX");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ADMIN <-> E&C",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ADMIN Block" && _destination == "E&E") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1IUHiZDYriPbhXP9MvMPCKI2D6MHNTRvE");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ADMIN <-> E&E",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ADMIN Block" && _destination == "CHEMICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1fHIKyQb27tW4Pol5YZqvR6mJtmojCdWL");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ADMIN <-> CHEMICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ADMIN Block" && _destination == "MECHANICAL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ADMIN <-> MECHANICAL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ADMIN Block" && _destination == "CIVIL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1Y1XUXOY1TdFIHLww_GHFSewpyOvspmVt");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ADMIN <-> CIVIL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ADMIN Block" && _destination == "DEPT. OF CHEM'") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1ksRnt38paj0sSzJ06RdqKJJZu969AHSY");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ADMIN <-> DEPT. OF CHEM'",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ADMIN Block" && _destination == "DEPT. OF PHYSIC") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1QXk7mxAlG6IueW8b3tFsBkOoNkdIJrVQ");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ADMIN <-> DEPT. OF PHYSIC",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ADMIN Block" && _destination == "DEPT. OF MATHS") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1y3GEu7zrBU0ad_3mWNK0bMJ-Rb4IrH-X");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ADMIN <-> DEPT. OF MATHS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ADMIN Block" && _destination == "ISE") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1ZAx6pnlc4SaTiaFRtqhA5FYaoXwc2lVI");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ADMIN <-> ISE",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        //end of admin posibility
        //START OF TO ADMIN
        if (_source == "CSE" && _destination == "ADMIN Block") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1k4E6RO8EQJFIEKxiM4EiB2M8SOBGuG83");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CSE <-> ADMIN",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&C" && _destination == "ADMIN Block") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1iztOHhhXO-tpKqkSACuO4cL6iXnl3RdA");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&C <-> ADMIN",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "E&E" && _destination == "ADMIN Block") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1S7CR8oNh0FRFjf9qst6uHGoonGKVmWbj");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "E&E <-> ADMIN",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CHEMICAL" && _destination == "ADMIN Block") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=18bEv4QHY4Ndha8abHeVed1Gn2QQiB81Z");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CHEMICAL <-> ADMIN",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "MECHANICAL" && _destination == "ADMIN Block") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "MECHANICAL <-> ADMIN",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CIVIL" && _destination == "ADMIN Block") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=19eaPG9VqgjhprkgiVQl-w9ApMLQAoVXo");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CIVIL <-> ADMIN",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF CHEM" && _destination == "ADMIN Block") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1qrgnqCtfr472DaqV5WwhLmmah4o2UTH1");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF CHEM <-> ADMIN",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF PHYSIC" && _destination == "ADMIN Block") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1Dh0Af8ZKJHtqDPbN8OhES7Ye3EKM8vLs");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF PHYSIC <-> ADMIN",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF MATHS" && _destination == "ADMIN Block") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1fUEd0MPymVcDzhHfpMul_wNPxKvA9Cjy");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF MATHS <-> ADMIN",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "ISE" && _destination == "ADMIN Block") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/file/d/1Hu9qnYyChD69YGWYG0xupwFMtxTapou5/view?usp=sharing");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "ISE <-> ADMIN",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        //END OF TO ADMIN
        if (_source == "DEPT. OF CHEM" && _destination == "CIVIL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1GWPcyaoeY2toYg8phYsTiRMdDa01QldF");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF CHEM <-> CIVIL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CIVIL" && _destination == "DEPT. OF CHEM") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1t1oq-s8_XyQ-aFcIl2tOjKVu4Qh2jgtB");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CIVIL <-> DEPT. OF CHEM",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF PHYSIC" && _destination == "CIVIL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1x7JH2KILPGffY6IjMlngP3_lWdA2vT_w");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF PHYSIC <-> CIVIL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CIVIL" && _destination == "DEPT. OF PHYSIC") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1CPxGN9tSpkp29snK58RDhcpDiVQBBGYS");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CIVIL <-> DEPT. OF PHYSIC",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "CIVIL" && _destination == "DEPT. OF MATHS") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1StRlZTPo-dT-c1fHGTmWdW2loaG9IjmV");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "CIVIL <-> DEPT. OF MATHS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF MATHS" && _destination == "CIVIL") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1zsz_SZrpFU94veH2x4vrDd6ubEyuD81D");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF MATHS <-> CIVIL",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } //END OF  CIVIL/////////////////////////////////////////////////////
        if (_source == "DEPT. OF CHEM" && _destination == "DEPT. OF PHYSIC") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1NqfG7FFpeTSWHg5ydw4gluwv6NZtDQ9h");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF CHEM <-> DEPT. OF PHYSIC",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF PHYSIC" && _destination == "DEPT. OF CHEM") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1MiD7wUJuvypaVJ-WDBDi57fQSkojzGvE");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF PHYSIC <-> DEPT. OF CHEM",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF CHEM" && _destination == "DEPT. OF MATHS") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1fg6SqhwV5oy8VXIHVBitAO4snRlVKlRt");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF CHEM<-> DEPT. OF MATHS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF MATHS" && _destination == "DEPT. OF CHEM") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1zQrJFcIQpByZGpEHtpBmHJab_bGRo9Cr");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF MATHS <-> DEPT. OF CHEM",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        } //END OF DCHEM///////////////////////////
        if (_source == "DEPT. OF MATHS" && _destination == "DEPT. OF PHYSIC") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=15WvSjXR-QFeoFugBbayMxq5-YwWSr0oi");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF MATHS <-> DEPT. OF PHYSIC",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        if (_source == "DEPT. OF PHYSIC" && _destination == "DEPT. OF MATHS") {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1_FHWnvMM-5hdtzjzL9Pd9AhjCT6Yki4v");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DEPT. OF PHYSIC<-> DEPT. OF MATHS",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        }
        //END OF DPHYSICS
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //ontap null;
            },
            splashColor: Colors.red,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "INVALID!!",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Navigation', /*style:TextStyle(color:Colors.black)*/
        ),
        elevation: 10.0,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "\n\n\n ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  "\nSelect your current location ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 20.0),
                DropdownButton(
                  items: _dropDownMenuItemsSource,
                  onChanged: onChangeDropdownItemSource,
                  value: _selectedSource,
                  autofocus: true,
                  iconSize: 60,
                ),
                Text(
                  "\n ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 20.0),
                // Text('selected: ${_selectedSource.name}'),
                Text(
                  "\nSelect Your Destination",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 20.0),
                DropdownButton(
                  items: _dropDownMenuItemsDestination,
                  onChanged: onChangeDropdownItemDestination,
                  value: _selectedDestination,
                  autofocus: true,
                  iconSize: 60,
                ),
                Text(
                  "\n\ ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 20.0),
                //Text('Press below : ${_selectedDestination.name}'),
              ],
            ),
            selectCollection(),
            // Image.network(_setImage())
          ],
        ),
      ),
    );
  }
}
