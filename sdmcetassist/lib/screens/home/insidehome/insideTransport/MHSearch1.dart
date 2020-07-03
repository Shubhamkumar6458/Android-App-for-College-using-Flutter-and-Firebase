import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MHSearch1 extends StatefulWidget {
  MHSearch1() : super();
  final String title = "Dropdown Menu";

  @override
  DropDownState createState() => DropDownState();
}

class Drop {
  int id;
  String name;
  Drop(this.id, this.name);

  static List<Drop> getDrop() {
    var list = <Drop>[
      Drop(1, 'AKSHAY PARK SIGNAL'),
      Drop(2, 'BASAVESHWAR NAGAR BUS STOP'),
      Drop(3, 'BHAIRIDEVARAKOPPA'),
      Drop(4, 'BVBCET'),
      Drop(5, 'CHETAN COLLEGE'),
      Drop(6, 'COLLEGE'),
      Drop(7, 'GANAPATI TEMPLE RAVINAGARA'),
      Drop(8, 'GANDHINAGAR'),
      Drop(9, 'GOVT SCHOOL(NEAR RAMESH BHAWAN)'),
      Drop(10, 'HUBLI DHARWAD ONE OFFICE'),
      Drop(11, 'INDIRA GLASS HOUSE'),
      Drop(12, 'ISHWARNAGAR'),
      Drop(13, 'KADASIDDESHAWR ARTS COLLEGE'),
      Drop(14, 'KAHDI GRAMODYOG(GOPANKOPPA)'),
      Drop(15, 'KEC'),
      Drop(16, 'KESHWAPUR CIRCLE'),
      Drop(17, 'KMC'),
      Drop(18, 'LAMINGTON SCHOOL'),
      Drop(19, 'LIONS SCHOOL VIJAYANAGAR'),
      Drop(20, 'MADHURA COLONY BUS STOP'),
      Drop(21, 'MANJUNATH NAGAR BUS STOP'),
      Drop(22, 'MURDESHWAR CERAMICS'),
      Drop(23, 'NAVANAGAR'),
      Drop(24, 'PRESIDENT HOTEL'),
      Drop(25, 'RAILWAY STATION(HEAD POST OFFICE)'),
      Drop(26, 'SDM DENTAL COLLEGE'),
      Drop(27, 'SHANTINAGAR BUS STOP'),
      Drop(28, 'SHRI.MARUTI TEMPLE(NEAR SUB-JAIL)'),
      Drop(29, 'SIDDARODHA MATT'),
      Drop(30, 'SIRUR PARK SIGNAL'),
      Drop(31, 'TOLL NAKA'),
      Drop(32, 'TYENGAR BAKERY JUNCTION'),
      Drop(33, 'UNKAL CROSS'),
      Drop(34, 'WATER TANK(SILVER TOWN)'),
      Drop(35, 'YALAKKI SHETTER COLONY'),
    ];
    return list;
  }
}

class DropDownState extends State<MHSearch1> {
  List<Drop> _drop = Drop.getDrop();

  List<DropdownMenuItem<Drop>> _dropDownMenuItemsDrop;

  Drop _selectedDrop;

  @override
  void initState() {
    _dropDownMenuItemsDrop = buildDropdownmenuItemsDrop(_drop);

    _selectedDrop = _dropDownMenuItemsDrop[0].value;

    super.initState();
  }

  List<DropdownMenuItem<Drop>> buildDropdownmenuItemsDrop(List drops) {
    List<DropdownMenuItem<Drop>> itemsDrop = List();
    for (Drop drop in drops) {
      itemsDrop.add(DropdownMenuItem(
        value: drop,
        child: Text(drop.name),
      ));
    }
    return itemsDrop;
  }

  onChangeDropdownItemDrop(Drop selectedDrop) {
    setState(() {
      _selectedDrop = selectedDrop;
    });
  }

  Widget selectCollection() {
    String _drop = "${_selectedDrop.name}";

    if (_drop == "AKSHAY PARK SIGNAL") {
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
                  "Bus No:KA25A B0084\nTiming:2:20 PM - 2:22PM",
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
    } else if (_drop == "BASAVESHWAR NAGAR BUS STOP") {
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
                  "Bus No:KA25A B0084\nTiming:2:23 PM - 2:24PM",
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
      if (_drop == "BHAIRIDEVARAKOPPA") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:1:58 PM - 1:59PM\n\nBus No:KA25A B0084\nTiming:1:58 PM - 1:59PM",
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
      } else if (_drop == "BVBCET") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:07 PM - 2:08PM\n\nBus No:KA25A B0084\nTiming:2:04 PM - 2:05PM",
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
      } else if (_drop == "CHETAN COLLEGE") {
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
                    "Bus No:KA25A B0084\nTiming:2:14 PM - 2:15PM",
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
      } else if (_drop == "COLLEGE") {
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
                    "WILL LEAVE AT\n\nBus No:KA25A B0090\nBus No:KA25A B1104\nTiming:1:40 PM - 1:42PM\n\nBus No:KA25A B0084\nTiming:1:40 PM - 1:42PM",
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
      } else if (_drop == "GANAPATI TEMPLE RAVINAGARA") {
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
                    "Bus No:KA25A B0084\nTiming:2:16 PM - 2:18PM",
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
      } else if (_drop == "GANDHINAGAR") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:1:45 PM - 1:46PM\n\nBus No:KA25A B0084\nTiming:1:45 PM - 1:46PM",
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
      } else if (_drop == "GOVT SCHOOL(NEAR RAMESH BHAWAN)") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:32 PM - 2:34PM",
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
      if (_drop == "HUBLI DHARWAD ONE OFFICE") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:28 PM - 2:30PM",
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
      if (_drop == "INDIRA GLASS HOUSE") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:13 PM - 2:15PM",
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
      if (_drop == "ISHWARNAGAR") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:1:56 PM - 1:58PM\n\nBus No:KA25A B0084\nTiming:1:56 PM - 1:58PM",
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
      if (_drop == "KADASIDDESHAWR ARTS COLLEGE") {
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
                    "Bus No:KA25A B0084\nTiming:2:06 PM - 2:07PM",
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
      if (_drop == "KAHDI GRAMODYOG(GOPANKOPPA)") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:38 PM - 2:40PM",
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
      if (_drop == "KEC") {
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
                    "Bus No:KA25A B0084\nTiming:2:32 PM - 2:33PM",
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
      if (_drop == "KESHWAPUR CIRCLE") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:23 PM - 2:24PM",
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
      if (_drop == "KMC") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:09 PM - 2:10PM",
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
      if (_drop == "LAMINGTON SCHOOL") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:17 PM - 2:18PM",
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
      if (_drop == "LIONS SCHOOL VIJAYANAGAR") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:41 PM - 2:42PM",
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
      if (_drop == "MADHURA COLONY BUS STOP") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:25 PM - 2:27PM",
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
      if (_drop == "MANJUNATH NAGAR BUS STOP") {
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
                    "Bus No:KA25A B0084\nTiming:2:25 PM - 2:27PM",
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
      if (_drop == "MURDESHWAR CERAMICS") {
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
                    "Bus No:KA25A B0084\nTiming:2:35 PM - 2:36PM",
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
      if (_drop == "NAVANAGAR") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:1:54 PM - 1:55PM\n\nBus No:KA25A B0084\nTiming:1:54 PM - 1:55PM",
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
      if (_drop == "PRESIDENT HOTEL") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:02 PM - 2:04PM\n\nBus No:KA25A B0084\nTiming:2:00 PM - 2:02PM",
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
      if (_drop == "RAILWAY STATION(HEAD POST OFFICE)") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:19 PM - 2:20PM",
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
      if (_drop == "SDM DENTAL COLLEGE") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:1:50 PM - 1:52PM\n\nBus No:KA25A B0084\nTiming:1:50 PM - 1:52PM",
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
      if (_drop == "SHANTINAGAR BUS STOP") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:35 PM - 2:36PM",
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
      if (_drop == "SHRI.MARUTI TEMPLE(NEAR SUB-JAIL)") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:45 PM",
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
      if (_drop == "SIDDARODHA MATT") {
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
                    "Bus No:KA25A B0084\nTiming:2:45 PM",
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
      if (_drop == "SIRUR PARK SIGNAL") {
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
                    "Bus No:KA25A B0084\nTiming:2:10 PM - 2:12PM",
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
      if (_drop == "TOLL NAKA") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:1:43 PM - 1:44PM\n\nBus No:KA25A B0084\nTiming:1:43 PM - 1:44PM",
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
      if (_drop == "TYENGAR BAKERY JUNCTION") {
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
                    "Bus No:KA25A B0084\nTiming:2:37 PM - 2:38PM",
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
      if (_drop == "UNKAL CROSS") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:2:05 PM - 2:06PM",
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
      if (_drop == "WATER TANK(SILVER TOWN)") {
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
                    "Bus No:KA25A B0084\nTiming:2:28 PM - 2:30PM",
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
      if (_drop == "YALAKKI SHETTER COLONY") {
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
                    "Bus No:KA25A B0090\nBus No:KA25A B1104\nTiming:1:46 PM - 1:47PM\n\nBus No:KA25A B0084\nTiming:1:46 PM - 1:47PM",
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
          'Hubli 1:30', /*style:TextStyle(color:Colors.black)*/
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
                  "\nSelect your dropping location ",
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
                  items: _dropDownMenuItemsDrop,
                  onChanged: onChangeDropdownItemDrop,
                  value: _selectedDrop,
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
              //  Text('Press below : ${_selectedDrop.name}'),
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
