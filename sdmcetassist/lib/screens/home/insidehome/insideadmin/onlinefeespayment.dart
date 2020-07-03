import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OnlineFeesPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Card(
              color: Colors.red,
              elevation: 5,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch(
                      'https://payments.billdesk.com/bdcollect/pay?p1=346&p2=6');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Pay Fees",
                        style: new TextStyle(
                            fontSize: 50.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "Read below Instruction before paying fees\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "Steps to be followed for \nonline fee payment.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 25,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. Enter your USN in the space for user ID\n2. Enter your date of birth as the password\n3. Then click on the Login button.\n4. The details will be displayed.\n5. Click on – I agree and Initiate payment.\n6. Select the mode of paymen.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "Note:",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 25,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. Please ensure to take admission, only if eligible for next semester.\n\n2. Please ensure that your USN, name of the student, Year/semester of study & amount are correct.\n\n3. The application to be filled by the student are available in your respective department and will be given after producing the fee payment receipt.\n\n4. Admission procedure is deemed to be ‘complete’ only after filled in application is submitted to the respective department, along with photocopy of fee paid receipt.\n\n5. Students belonging to special fee category/bank loan are advised to contact admission section.\n\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ));
  }
}
