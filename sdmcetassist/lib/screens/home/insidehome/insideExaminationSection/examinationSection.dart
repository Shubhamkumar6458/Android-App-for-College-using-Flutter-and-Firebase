import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExaminationSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Examination Section', /*style:TextStyle(color:Colors.black)*/
        ),
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          // crossAxisCount: 3,
          children: <Widget>[
            Image.network(
              "https://sdmcet.ac.in/wp-content/uploads/2019/06/Relavant-Image-1024x442.jpg",
              fit: BoxFit.cover,
            ),
            Text(
              "\n\"You can download all forms related to examination section by pressing yellow button\"",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.red,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://drive.google.com/open?id=1KDp6xpNtwbHXo7Z9rEzvGOWUcSfq-lH2");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        " Get Results",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "(Tap To Check Result)",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.red,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExamFees()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Exam Related Fees Structure",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "(Tap here)",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nRoles and Responsibilities of the office of the Controller of Examinations:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "• Conduct fair and timely examinations as per the academic calendar of the college.\n• Appoint examiners for the setting of question papers and evaluation for theory courses.\n• Compilation of marks, timely declaration of results and issue of marks statements.\n• Presents result analysis report before Academic Council for its approval for the award of degree to the qualified candidates during convocation every year by the Visvesvaraya Technological University, Belagavi.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nMakeup Examination Form:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "• Fees to be paid in college campus Karnataka Bank through Challan available at Office of the Controller of Examinations.\n• Fees paid once cannot be refunded.\n• After the submission of the application, modification in the application will not be entertained.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• You should submit your request approved by the Dean Academic at the office of the controller of examinations within the stipulated period as mentioned in the notification. Late submissions will not be accepted. Incomplete applications will not be processed.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/makeup-examination/?wpdmdl=3488");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Get Application for the \nMakeup\nExamination",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nRevaluation Form:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "If the candidate is aggrieved of the grades declared, he/she may apply for the revaluation.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "• Fees to be paid in college campus Karnataka Bank through Challan available at Office of the Controller of Examinations.\n• Fees paid once cannot be refunded.\n• After the submission of the application, modification in the application will not be entertained.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• You should submit your request to the office of the controller of examinations within the stipulated period as mentioned in the notification. Late submissions will not be accepted. Incomplete applications will not be processed.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/revaluation-form/?wpdmdl=3490");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Get Application for\n Revaluation",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nProvisional degree certificate (PDC):",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "A provisional degree certificate is issued to a candidate by the college stating that the candidate has fulfilled the graduation requirements. It can be used until the original degree certificate is issued by the Visvesvaraya Technological University, Belagavi.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "• During the Graduation Day Ceremony, provisional degree certificate will be issued to the qualified candidates.\n• However, the non-qualified candidates have to submit an application, as and when they are qualified.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• Application to be submitted at the Office of the Controller of Examinations. Incomplete applications will not be processed.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://drive.google.com/open?id=1KDp6xpNtwbHXo7Z9rEzvGOWUcSfq-lH2");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Get Application for the \nProvisional Degree Certificate",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "(Tap here)",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nDuplicate Provisional Degree Certificate:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "Duplicate provisional degree certificate will not be issued once the degree certificate is issued by the Visvesvaraya Technological University, Belagavi.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "• Fees to be paid at the cash counter in Administrative Block. \n• Fees paid once cannot be refunded.\n• Enclose original police FIR regarding the lost Original Documents.\n• Enclose original Affidavit on Stamp paper of Rs. 20, mentioning the details of USN, Name, Month and Year of Examination of completion of degree and requesting the concerned authority for the issue of DUPLICATE of the same. If original is found at the later date of issue of duplicate it should be returned to SDM College of Engineering and Technology, Dharwad.\n• UG candidates to enclose a copy of I to VIII Semester grade cards attested by the Head of the Department, PG candidates to enclose a copy of I to IV Semester grade cards attested by the Head of the Department and Fee paid receipt.\n• After the submission of the application, modification in the application will not be entertained.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• Application to be submitted at the Office of the Controller of Examinations. Incomplete applications will not be processed\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/duplicate-provisional-degree-certificate/?wpdmdl=3470");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Get Application for the \nDuplicate Provisional Degree \nCertificate",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nTranscript:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 40,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "It is an official written record of your academic history at this college. It includes course codes and course titles, grades obtained and credits earned. Transcripts also show your cumulative grade point average (CGPA). The transcript contains final grades of all semesters passed at the time of applying for transcripts, provided there are no backlogs.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "• Please check your eligibility to apply for Transcripts before applying. \n• Fees to be paid at the cash counter in Administrative Block.\n• Fees paid once cannot be refunded.\n• Enclose a copy of all completed semester grade cards attested by the Head of the Department and Fee paid receipt.\n• After the submission of the application, modification in the application will not be entertained.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• Application to be submitted at the Office of the Controller of Examinations. Incomplete applications will not be processed\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/transcript/?wpdmdl=3473");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Get Application for the \nTranscripts",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "(Tap here)",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nCGPA to Percentage Conversion:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "• Fees to be paid at the cash counter in Administrative Block. \n• Fees paid once cannot be refunded.\n• Enclose a copy of all completed semester grade cards attested by the Head of the Department and Fee paid receipt.\n• After the submission of the application, modification in the application will not be entertained.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• Application to be submitted at the Office of the Controller of Examinations. Incomplete applications will not be processed.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/cgpa-to-percentage-conversion/?wpdmdl=3475");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Get Application for the \nCGPA to Percentage  \nConversion",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/5-1-process-of-cgpa-to-percentage-conversion/?wpdmdl=3858");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "The process of CGPA to Percentage Conversion",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nProvisional Grade Sheet: ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "Provisional grade sheet will be issued only after the announcement of makeup examination revaluation result for semester-end examination and supplementary semester examination revaluation result for supplementary semester examination. Provisional grade sheet will not be issued once the grade card is printed for the examination you are requesting.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "• Fees to be paid at the cash counter in Administrative Block.\n• Fees paid once cannot be refunded.\n• After the submission of the application, modification in the application will not be entertained.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• Application to be submitted at the Office of the Controller of Examinations. Incomplete applications will not be processed.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/duplicate-provisional-degree-certificate/?wpdmdl=3470");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Get Application for the \nProvisional Grade Sheet\nCertificate",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nGrade Card:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "There is no fee for the Original Grade Cards. Notification will be given whenever they are ready to be issued. Grade cards will be issued in the department. If your grade card is not found in the department, then submit the written application for the same at the Office of the Controller of Examinations. You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "• The student has to collect in person his/her original grade card by showing the college identity card. Put your signature for having received the original grade card in the list available at your department.\n• If you can’t come in person, then you can send an authorization letter, your college identity card, and your self-attested Aadhar card mentioning on it for the issue of your original grade card, through a person authorized by you. The authorized person who comes to collect your original grade card should also submit a copy of his/her Aadhar card with a written statement on it as “I have collected the original grade card of Mr./Ms. ____ bearing USN: _____ for the semester ____ of Examination ______ on _______” followed with authorized person signature. The statement should be written while receiving your grade card.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nDuplicate Grade Card:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "• Fees to be paid at the cash counter in Administrative Block\n• Fees paid once cannot be refunded.\n• Enclose original police FIR regarding the lost Original Documents.\n• Enclose original Affidavit on Stamp paper of Rs. 20, mentioning the details of USN, Name, Semester, Month and Year of Examination of the grade cards lost and requesting the concerned authority for the issue of DUPLICATE of the same. If original is found at the later date of issue of duplicate it should be returned to SDM College of Engineering and Technology, Dharwad.\n• After the submission of the application, modification in the application will not be entertained.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• Application to be submitted at the Office of the Controller of Examinations. Incomplete applications will not be processed. \n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/duplicate-grade-card/?wpdmdl=3481");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Get Application for the \n Duplicate Grade Card",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nName Correction in Grade Card:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "•  Fees to be paid at the cash counter in Administrative Block.\n• Fees paid once cannot be refunded.\n• Enclose a photocopy of SSLC marks card attested by the Head of the Department.\n• Enclose Original Grade card.\n• After the submission of the application, modification in the application will not be entertained.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• Application to be submitted at the Office of the Controller of Examinations. Incomplete applications will not be processed. \n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/application-for-the-name-correction-in-grade-cards/?wpdmdl=3483");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Get Application for the \nName Correction in \nGrade Card ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "\nDuplicate Admission Ticket:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "• Fees to be paid at the cash counter in Administrative Block\n• Fees paid once cannot be refunded.\n• You should have your college Identity card (any other Identity proofs issued by the government in case you are an alumnus) whenever you interact with the Office of the Controller of Examinations.\n• You should submit your request at least one day before your examination at the Office of the Controller of Examinations. Incomplete applications will not be processed. \n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.amber,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://sdmcet.ac.in/download/duplicate-admission-ticket/?wpdmdl=3485");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Get Application for the \nDuplicate Admission Ticket",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
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

class ExamFees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Examination Fees Structure',
        ),
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          // crossAxisCount: 3,
          children: <Widget>[
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/examrelated%20fee%20structure.jpg?alt=media&token=47bfb968-658a-4668-86c3-cf6f77d532fc",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
