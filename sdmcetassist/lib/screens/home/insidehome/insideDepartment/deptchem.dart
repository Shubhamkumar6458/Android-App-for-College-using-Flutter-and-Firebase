import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sdmcetassist/shared/loading.dart';
import 'package:url_launcher/url_launcher.dart';
import 'fullscreen_image.dart';

class DeptChem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Department of Chemistry',
        ),
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DeptChemAboutp1()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                        size: 50.0,
                      ),
                      Text("About",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FacultyDetails()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.people,
                        size: 50.0,
                      ),
                      Text("Faculty",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DChemNotice()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.warning,
                        size: 50.0,
                      ),
                      Text("Notice",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeachersTimeTable()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.av_timer,
                        size: 50.0,
                      ),
                      Text("Teacher's Time Table",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://drive.google.com/open?id=1syZr7Ygn91G_lqcNj8OWO7Ca0LCaA6Xq");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.description,
                        size: 50.0,
                      ),
                      Text("Prev. Question Papers",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Start Of About Class
class DeptChemAboutp1 extends StatelessWidget {
  const DeptChemAboutp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Department of Chemistry', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue,
        elevation: 10.0,
      ),
      body: PageView(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Image.network(
                  "https://sdmcet.ac.in/wp-content/uploads/2017/09/departmentchemistry.png"),
              Center(
                child: Text(
                  "\nSwipe Left for Additional link",
                  textAlign: TextAlign.justify,
                  softWrap: true,
                  style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                ),
              ),
              Wrap(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "The Department of chemistry is established in the year 1979. The department aims at channelizing the basic scientific ideas to the engineering studies. The department is a recognized research centre of VTU, Belgaum. Presently eight students are working for their doctoral studies. It has developed research expertise in current research domains of Coordination Chemistry, Synthetic Organic Chemistry, Polymer Chemistry, Material Chemistry, Nanotechnology & Drug Delivery etc. Good numbers of R&D projects have been completed and 02 projects are in progress. The department has 04 faculty members with more than 90 research publications in reputed peer reviewed national and international journals with high impact factor. The department conducts various workshops and invited lectures to disseminate basic Chemistry knowledge to budding engineers. Blend of teaching and research expertise of the faculty is an added attribute in training the students.\n\nVision:\nTo develop the art of excellence in teaching-learning, research and consultancy by chemo- innovations.\n\nMission:\nThe stated vision can be achieved through:\n1.Commitment in achieving excellence through teaching learning process.\n2.Upgradation of knowledge by interdisciplinary research.\n3.Encourage to meet the needs of a changing society.",
                      textAlign: TextAlign.justify,
                      softWrap: true,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Swipe Left for Additional link\n",
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            child: Container(
              child: ListView(
                children: <Widget>[
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {},
                      //splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "Additional Links",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  // fontStyle: FontStyle.italic,
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
                        launch(
                            'https://sdmcet.ac.in/download/chemistry-bos-college/?wpdmdl=4504');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "BOS Membeer List",
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
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://sdmcet.ac.in/download/chemistry-boe-2018-19/?wpdmdl=4513');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "BOE Member List",
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
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://sdmcet.ac.in/download/chemistry-faculty-research-publication/?wpdmdl=4507');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Publications",
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
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://sdmcet.ac.in/download/chemistry-conference-fdp-workshop-attended/?wpdmdl=4505');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "FDP,Conference,Seminar",
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
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://sdmcet.ac.in/download/chemistry-interaction-outside-the-world/?wpdmdl=4508');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Faculty Interaction with External",
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
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://sdmcet.ac.in/download/chemistry-research-project/?wpdmdl=4509');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Research Projects ",
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
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://sdmcet.ac.in/download/chemistry-qp-formate-for-internal-and-ese/?wpdmdl=4514');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Question Paper Sample Format",
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
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://sdmcet.ac.in/download/chemistry-result-analysis/?wpdmdl=4510');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Result Analysis",
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
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://sdmcet.ac.in/download/chemistry-dept-events-organized-2017-18/?wpdmdl=4506');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Event Conducted",
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
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://sdmcet.ac.in/download/chemistry-best-practices/?wpdmdl=4503');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Best Practices",
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
                  ),
                ],
              ),
            ),
          ),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
//End of About Class

//start of faculty
class FacultyDetails extends StatefulWidget {
  _FacultyDetails createState() => new _FacultyDetails();
}

class _FacultyDetails extends State<FacultyDetails> {
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
      Firestore.instance.collection("DCHEMFacultyDetails");

  @override
  void initState() {
    super.initState();
    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        timeTable = datasnapshot.documents;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            'Department of Chemistry', /*style:TextStyle(color:Colors.black)*/
          ),
          backgroundColor: Colors.blue,
          elevation: 10.0,
        ),
        body: timeTable != null
            ? new StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(9.0),
                crossAxisCount: 1,
                itemCount: timeTable.length,
                itemBuilder: (context, i) {
                  String imgPath = timeTable[i].data['url'];
                  return new Material(
                      elevation: 10.0,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(20.0)),
                      child: new InkWell(
                        onTap: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    new FullScreenImagePage(imgPath))),
                        child: Hero(
                          tag: imgPath,
                          child: new FadeInImage(
                            placeholder: new AssetImage("assets/sdmlogo.jpg"),
                            image: new NetworkImage(imgPath),
                          ),
                        ),
                      ));
                },
                staggeredTileBuilder: (i) => new StaggeredTile.count(1, 1),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              )
            : new Loading());
  }
}

//end of faculty details
//Start of Teacher's time table
class TeachersTimeTable extends StatefulWidget {
  _TeachersTimeTable createState() => new _TeachersTimeTable();
}

class _TeachersTimeTable extends State<TeachersTimeTable> {
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
      Firestore.instance.collection("DCHEMFacultyTT");

  @override
  void initState() {
    super.initState();
    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        timeTable = datasnapshot.documents;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            'Department of Chemistry', /*style:TextStyle(color:Colors.black)*/
          ),
          backgroundColor: Colors.blue,
          elevation: 10.0,
        ),
        body: timeTable != null
            ? new StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(9.0),
                crossAxisCount: 1,
                itemCount: timeTable.length,
                itemBuilder: (context, i) {
                  String imgPath = timeTable[i].data['url'];
                  return new Material(
                      elevation: 10.0,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(50.0)),
                      child: new InkWell(
                        onTap: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    new FullScreenImagePage(imgPath))),
                        child: Hero(
                          tag: imgPath,
                          child: new FadeInImage(
                            placeholder: new AssetImage("assets/sdmlogo.jpg"),
                            image: new NetworkImage(imgPath),
                          ),
                        ),
                      ));
                },
                staggeredTileBuilder: (i) => new StaggeredTile.count(1, 1),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              )
            : new Loading());
  }
}

//end of class Teacher's TimeTable
//Start class Notice

class DChemNotice extends StatefulWidget {
  _DChemNotice createState() => new _DChemNotice();
}

class _DChemNotice extends State<DChemNotice> {
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
      Firestore.instance.collection("DCHEMNotice");

  @override
  void initState() {
    super.initState();
    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        timeTable = datasnapshot.documents;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            'Department of Chemistry', /*style:TextStyle(color:Colors.black)*/
          ),
          backgroundColor: Colors.blue,
          elevation: 10.0,
        ),
        body: timeTable != null
            ? new StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(9.0),
                crossAxisCount: 1,
                itemCount: timeTable.length,
                itemBuilder: (context, i) {
                  String imgPath = timeTable[i].data['url'];
                  return new Material(
                      elevation: 10.0,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(50.0)),
                      child: new InkWell(
                        onTap: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    new FullScreenImagePage(imgPath))),
                        child: Hero(
                          tag: imgPath,
                          child: new FadeInImage(
                            placeholder: new AssetImage("assets/sdmlogo.jpg"),
                            image: new NetworkImage(imgPath),
                          ),
                        ),
                      ));
                },
                staggeredTileBuilder: (i) => new StaggeredTile.count(1, 1),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              )
            : new Loading());
  }
}

//end of Notice
