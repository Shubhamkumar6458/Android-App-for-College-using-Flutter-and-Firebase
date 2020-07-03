import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Placement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Placement', /*style:TextStyle(color:Colors.black)*/
        ),
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          // crossAxisCount: 3,
          children: <Widget>[
            Image.network(
              "https://sdmcet.ac.in/wp-content/uploads/2017/07/placementoverview.jpg",
              fit: BoxFit.cover,
            ),
            Text(
              "\nOverview",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "At SDMCET, we believe that placement performance is one of the vital indicators of overall success of a professional institution. Having said that TPO recognizes the fact that not all students are interested in placement and have other alternative career plans. But those students who are deserving and willing walk their preparation path , TPO has put in place a comprehensive plan and procedure that initiates a student towards successful placement process as early as in 4th semester and provides handholding all through onboarding process. In addition, internships are increasingly being offered to selected students.In collaboration with CIII and departments, students are made to undergo training in different modules that are relevant to training and placement and are ingrained with adequate skills such as aptitude, communication. These skills combined with students technical knowledge gained in their engineering courses make them placement ready by the end of VI semester.Every year a large number of regular and new companies start campus hiring around September. The range of companies visiting campus includes industry leaders, national and international brands and core that are specific to each branch of engineering. On average every year more than 50 companies visit our campus and more than 80 % students are placed.We are striving to sustain our success and achieve more in the coming years!.\n\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nPreprations",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "We conduct around the year training modules. These module cover entire spectrum of student training needs:\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "• Industrial orientation training\n• Aptitude training\n• Soft Skills\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nPlacement Record",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Image.network(
              "https://sdmcet.ac.in/wp-content/uploads/2018/05/2016-17-to-2018-19-Statistics.png",
              fit: BoxFit.cover,
            ),
            Text(
              "\n2018-19 Placement Statistics",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Image.network(
              "https://sdmcet.ac.in/wp-content/uploads/2018/05/Companies-Visited-2018-19-1.png",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://sdmcet.ac.in/wp-content/uploads/2018/05/departmentwise-offer-2016-2019.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Previous Year Stats",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Card(
              color: Colors.amber,
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/placement-year-2018-19-pdf/?wpdmdl=4543");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Placement Year 2018-19 PDF ",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 25.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.amber,
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/placement-year-2017-18-pdf/?wpdmdl=2599");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Placement Year 2017-18 PDF",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 25.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.amber,
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/placement-year-2016-17-pdf/?wpdmdl=2597");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Placement Year 2016-17 PDF",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 25.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.amber,
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/placement-year-2015-16-pdf/?wpdmdl=2595");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Placement Year 2015-16 PDF",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            fontSize: 25.0,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nContact Placement Officer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
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
              color: Colors.amber,
              elevation: 10,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch("tel: 8453212131");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Prof. Ravindra Dastikop",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "Training and Placement Officer (IT Branch)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "Phone no:- 8453212131",
                        style: new TextStyle(
                            fontSize: 30.0,
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
              color: Colors.amber,
              elevation: 10,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch("tel: 08362468561");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Prof. Vinayak Miskin",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "Training and Placement Officer (Non-IT Branch)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "Phone: 0836 2468561(Off)",
                        style: new TextStyle(
                            fontSize: 30.0,
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
              color: Colors.amber,
              elevation: 10,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch("mailto:sdmcet.taps@gmail.com?");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Mail",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "Training and Placement Office",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "sdmcet.taps@gmail.com",
                        style: new TextStyle(
                            fontSize: 30.0,
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
      ),
    );
  }
}
