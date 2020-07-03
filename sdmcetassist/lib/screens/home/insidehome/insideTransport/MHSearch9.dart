import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MHSearch9 extends StatefulWidget {
  MHSearch9() : super();
  final String title = "Dropdown Menu";

  @override
  DropDownState createState() => DropDownState();
}

class Pickup {
  int id;
  String name;
  Pickup(this.id, this.name);

  static List<Pickup> getPickup() {
    return <Pickup>[
      Pickup(1, 'AKSHAY PARK SIGNAL'),
      Pickup(2, 'BASAVESHWAR NAGAR BUS STOP'),
      Pickup(3, 'BHAIRIDEVARAKOPPA'),
      Pickup(4, 'BVBCET'),
      Pickup(5, 'CHETAN COLLEGE'),
      Pickup(6, 'COLLEGE'),
      Pickup(7, 'GANAPATI TEMPLE RAVINAGARA'),
      Pickup(8, 'GANDHINAGAR'),
      Pickup(9, 'GOVT SCHOOL(NEAR RAMESH BHAWAN)'),
      Pickup(10, 'HUBLI DHARWAD ONE OFFICE'),
      Pickup(11, 'INDIRA GLASS HOUSE'),
      Pickup(12, 'ISHWARNAGAR'),
      Pickup(13, 'KADASIDDESHAWR ARTS COLLEGE'),
      Pickup(14, 'KAHDI GRAMODYOG(GOPANKOPPA)'),
      Pickup(15, 'KEC'),
      Pickup(16, 'KESHWAPUR CIRCLE'),
      Pickup(17, 'KMC'),
      Pickup(18, 'LAMINGTON SCHOOL'),
      Pickup(19, 'LIONS SCHOOL VIJAYANAGAR'),
      Pickup(20, 'MADHURA COLONY BUS STOP'),
      Pickup(21, 'MANJUNATH NAGAR BUS STOP'),
      Pickup(22, 'MURDESHWAR CERAMICS'),
      Pickup(23, 'NAVANAGAR'),
      Pickup(24, 'PRESIDENT HOTEL'),
      Pickup(25, 'RAILWAY STATION(HEAD POST OFFICE)'),
      Pickup(26, 'SDM DENTAL COLLEGE'),
      Pickup(27, 'SHANTINAGAR BUS STOP'),
      Pickup(28, 'SHRI.MARUTI TEMPLE(NEAR SUB-JAIL)'),
      Pickup(29, 'SIDDARODHA MATT'),
      Pickup(30, 'SIRUR PARK SIGNAL'),
      Pickup(31, 'TOLL NAKA'),
      Pickup(32, 'TYENGAR BAKERY JUNCTION'),
      Pickup(33, 'UNKAL CROSS'),
      Pickup(34, 'WATER TANK(SILVER TOWN)'),
      Pickup(35, 'YALAKKI SHETTER COLONY'),
    ];
  }
}

class DropDownState extends State<MHSearch9> {
  List<Pickup> _pickup = Pickup.getPickup();

  List<DropdownMenuItem<Pickup>> _dropDownMenuItemsPickup;

  Pickup _selectedPickup;

  @override
  void initState() {
    _dropDownMenuItemsPickup = buildDropdownmenuItemsPickup(_pickup);

    _selectedPickup = _dropDownMenuItemsPickup[0].value;

    super.initState();
  }

  List<DropdownMenuItem<Pickup>> buildDropdownmenuItemsPickup(List pickups) {
    List<DropdownMenuItem<Pickup>> itemsPickup = List();
    for (Pickup pickup in pickups) {
      itemsPickup.add(DropdownMenuItem(
        value: pickup,
        child: Text(pickup.name),
      ));
    }
    return itemsPickup;
  }

  onChangeDropdownItemPickup(Pickup selectedPickup) {
    setState(() {
      _selectedPickup = selectedPickup;
    });
  }

  Widget selectCollection() {
    String _pickup = "${_selectedPickup.name}";

    if (_pickup == "AKSHAY PARK SIGNAL") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            // Navigator.push(
            //   context, MaterialPageRoute(builder: (context) => CSEtoISE()));
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "NO BUS",
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
    } else if (_pickup == "BASAVESHWAR NAGAR BUS STOP") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            //  Navigator.push(
            //    context, MaterialPageRoute(builder: (context) => CSEtoENC()));
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "NO BUS",
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
      if (_pickup == "BHAIRIDEVARAKOPPA") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CSEtoCIVIL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:32 AM - 8:33AM",
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
      } else if (_pickup == "BVBCET") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => CSEtoCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:25 AM - 8:26AM",
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
      } else if (_pickup == "CHETAN COLLEGE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //    Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => CSEtoMECH()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NO BUS",
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
      } else if (_pickup == "COLLEGE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => CSEtoDPHYSICS()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "WILL REACH AT\n\nBus No:KA25A B1104\nTiming:8:50 AM - 8:55AM",
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
      } else if (_pickup == "GANAPATI TEMPLE RAVINAGARA") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CSEtoDMATHS()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NO BUS",
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
      } else if (_pickup == "GANDHINAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(
              //   context, MaterialPageRoute(builder: (context) => CSEtoENE()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:45 AM - 8:46AM",
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
      } else if (_pickup == "GOVT SCHOOL(NEAR RAMESH BHAWAN)") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CSEtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:10 AM - 8:11AM",
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
      } //////end of cse to  all////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      if (_pickup == "HUBLI DHARWAD ONE OFFICE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(
              //   context, MaterialPageRoute(builder: (context) => ISEtoENC()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:12 AM - 8:13AM",
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
      if (_pickup == "INDIRA GLASS HOUSE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(
              //    context, MaterialPageRoute(builder: (context) => ISEtoENE()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:20 AM - 8:22AM",
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
      if (_pickup == "ISHWARNAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ISEtoCHEMICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:34 AM - 8:35AM",
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
      if (_pickup == "KADASIDDESHAWR ARTS COLLEGE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ISEtoMECHANICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NO BUS",
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
      if (_pickup == "KAHDI GRAMODYOG(GOPANKOPPA)") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ISEtoCIVIL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:05 AM - 8:06AM",
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
      if (_pickup == "KEC") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ISEtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NO BUS",
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
      if (_pickup == "KESHWAPUR CIRCLE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ISEtoDPHYSIC()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:15 AM - 8:16AM",
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
      if (_pickup == "KMC") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ISEtoDMATHS()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:23 AM - 8:24AM",
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
      if (_pickup == "LAMINGTON SCHOOL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(
              //    context, MaterialPageRoute(builder: (context) => ENCtoENE()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:19 AM - 8:20AM",
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
      if (_pickup == "LIONS SCHOOL VIJAYANAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ENCtoCHEMICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:02 AM - 8:03AM",
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
      if (_pickup == "MADHURA COLONY BUS STOP") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //      MaterialPageRoute(builder: (context) => ENCtoMECHANICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:14 AM - 8:15AM",
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
      if (_pickup == "MANJUNATH NAGAR BUS STOP") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENCtoCIVIL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NO BUS",
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
      if (_pickup == "MURDESHWAR CERAMICS") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ENCtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NO BUS",
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
      if (_pickup == "NAVANAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENCtoDPHY()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:38 AM - 8:40AM",
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
      if (_pickup == "PRESIDENT HOTEL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENCtoDMATH()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:27 AM - 8:30AM",
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
      if (_pickup == "RAILWAY STATION(HEAD POST OFFICE)") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ENEtoCHEMICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:18 AM - 8:19AM",
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
      if (_pickup == "SDM DENTAL COLLEGE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENEtoCIVIL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:42 AM - 8:43AM",
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
      if (_pickup == "SHANTINAGAR BUS STOP") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENEtoDMATH()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:07 AM - 8:08AM",
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
      if (_pickup == "SHRI.MARUTI TEMPLE(NEAR SUB-JAIL)") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENEtoMECHANICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:00 AM - 8:01AM",
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
      if (_pickup == "SIDDARODHA MATT") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENEtoDPHYSIC()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NO BUS",
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
      if (_pickup == "SIRUR PARK SIGNAL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ENEtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NO BUS",
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
      if (_pickup == "TOLL NAKA") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //    Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => MECHtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:47 AM - 8:48AM",
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
      if (_pickup == "TYENGAR BAKERY JUNCTION") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //    Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => MECHtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NO BUS",
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
      if (_pickup == "UNKAL CROSS") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CIVILtoCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:26 AM - 8:27AM",
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
      if (_pickup == "WATER TANK(SILVER TOWN)") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //   Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CHEMtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NO BUS",
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
      if (_pickup == "YALAKKI SHETTER COLONY") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              //    Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CHEMtoDPHY()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Bus No:KA25A B1104\nTiming:8:44 AM - 8:45AM",
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

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Hubli 9:00', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue,
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
                  "\nSelect your pickup location ",
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
                  items: _dropDownMenuItemsPickup,
                  onChanged: onChangeDropdownItemPickup,
                  value: _selectedPickup,
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
                //Text('Press below : ${_selectedPickup.name}'),
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
