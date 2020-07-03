import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Admission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: ListView(children: <Widget>[
        Text(
          "Overview",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 25,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "\nSDMCET a premier institute in India accepts admissions through 3 selection processes for all branches of undergraduate courses: Viz. COMMON Entrance TEST(CET), COMEDK and MANAGEMENT quota\n",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "Admission Procedure for all candidates seeking admission",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 25,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "\n1. Purchase Admission Application form by paying Rs.450/- by cash at the Counter.\n\n2. Read all the instructions carefully and fill the application form in BLOCK LETTERS ONLY. Sign wherever it is mentioned, with date.\n\n3. D.D. / cash to be remitted to Bank through challans issued along with the Application form.\n\n4. Submit the completed Application Form along with documents & bank receipt. (Original + 4 sets of photo copies) Keep one set of documents with you for your record.\n\n5. If Hostel admission is required, purchase Hostel Admission Form by paying Rs.25/- by cash at the counter & submit the completed hostel admission form along with the D.D. / cash remitted Bank challans towards hostel fees.\n\n",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "Documents to be submitted along with the Application form during addmission",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 25,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "\n1. CET Allotment order / COMEDK Allotment order / SDME Society Admission Order (as applicable).\n\n2.SSLC / 10th Std. Marks Card.\n\n3. PUC II/ 12th std Marks Card.\n\n4. Transfer Certificate.\n\n5. Study / Character Certificate.\n\n6. Photographs – 4 Passport size.\n\n7. CET Acknowledgement Card (Green Card) (for CET Quota seats only).\n\n8. Migration Certificate (for Non- Karnataka Candidates only).\n\n",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "\nTap Below for additional Information",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
        Card(
          color: Colors.amber,
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cet()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CET (Govt.Quota)",
                    style: new TextStyle(
                        fontSize: 25.0,
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
        Card(
          color: Colors.amber,
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Comedk()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "COMEDK",
                    style: new TextStyle(
                        fontSize: 25.0,
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
        Card(
          color: Colors.amber,
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LateralEntry()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Lateral Entry",
                    style: new TextStyle(
                        fontSize: 25.0,
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
        Card(
          color: Colors.amber,
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Management()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Management",
                    style: new TextStyle(
                        fontSize: 25.0,
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
        Card(
          color: Colors.amber,
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Nri()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NRI",
                    style: new TextStyle(
                        fontSize: 25.0,
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
        Card(
          color: Colors.amber,
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PgMtechMba()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "PG M.Tech and MBA",
                    style: new TextStyle(
                        fontSize: 20.0,
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
          "\n\nTap below Button to call",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 15,
            fontStyle: FontStyle.italic,
          ),
        ),
        Card(
          color: Colors.red,
          elevation: 10,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              launch("tel:08362447465");
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "For any Admission help:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "College Phone No.: 0836 – 2447 465",
                    style: new TextStyle(
                        fontSize: 20.0,
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
          color: Colors.red,
          elevation: 10,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              launch("tel: 9448275251");
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Faculty in-charge for I year admissions",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Prof. G. L. Rajabanshi – 9448275251",
                    style: new TextStyle(
                        fontSize: 20.0,
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
          color: Colors.red,
          elevation: 10,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              launch("tel: 9972457790");
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Officer in Charge for I year Admissions",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Mr. P.V.Gangadhar Rao – 9972457790",
                    style: new TextStyle(
                        fontSize: 20.0,
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
        Text(
          "",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
      ]),
    );
  }
}

class Cet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Admission by Cet', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fkcet.jpg?alt=media&token=3a77e751-9fa9-46d7-a5c8-c6a5e54ba5e2'),
            Text(
              "ELIGIBILITY FOR GOVERNMENT SEATS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nQualification:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "Pass in 10+2 or equivalent with Physics, Mathematics as compulsory subjects along with Chemistry or Biotechnology or Biology or Computer science or Electronics with a minimum of 45% marks taken together in Physics, Mathematics and any one of the optional subjects.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nELIGIBILITY CLAUSES:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "The candidate should have studied and passed in one or more Government or Government recognized educational institutions located in the State of Karnataka for a minimum period of SEVEN academic years commencing from 1st standard to 2nd PUC / 12th standard as on 1st July of the year in which the Entrance Test is held.Eligibility/Admissions/allotments made to & by the colleges shall be subject to approval by AICTE/Government/University.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nDocuments to be produced:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. SSLC or 10 th Marks Card\n2. 2nd PUC / 12th standard Marks Card of the candidate.\n3. Candidate’s Study Certificate.\n4. If claiming Rural quota: – Rural Study Certificate from 1st to 10th std for Ten Complete Years.\n5. If claiming Kannada Medium quota: Kannada Medium Study Certificate from 1st to 10th std for Ten Complete Years.\n6. If claiming reservation benefits: Caste / Caste Income Certificate issued by Concerned Tahsildar- For SC / ST in Form-D, Category-I in form E and 2A, 2B, 3A and 3B in Form F.\n7. Transfer Certificate from previous Educational Institute.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ), //enter below
            Card(
              elevation: 5,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch('http://kea.kar.nic.in/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\nTo Get More Info Click Here\n",
                        style: new TextStyle(
                            fontSize: 17.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
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

class Comedk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Admission by COMEDK', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fcomedk.jpg?alt=media&token=91d68611-70ec-4f2f-8468-1101a3829a21'),
            Text(
              "ELIGIBILITY CRITERIA",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nCandidates from all over the country are eligible to apply provided they should have appeared for the COMEDK Entrance exam ( UGET 2017) and should have fulfilled academic eligibility.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility. However, changes, if any, in the eligibility criteria by the VTU/DTE/ AICTE will be adopted.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch('http://www.comedk.org/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\nTo Get More Info Click Here\n",
                        style: new TextStyle(
                            fontSize: 17.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
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

class Management extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Admission by Management', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Text(
              "MANAGEMENT ELIGIBILITY CRITERIA",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nCandidates from all over the country /NRI/ Foreign National are eligible to apply under Management Quota",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility. However, changes, if any, in the eligibility criteria by the VTU/DTE/ AICTE will be adopted.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nAn attempt in the COMEDK or CET Entrance Test or any other Entrance test (recognized) for seeking admission to Engineering courses under the management quota is considered adequate for figuring in the rank list.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Nri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Admission for Nri', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Text(
              "Eligibility Criteria for NRI",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nAs per the definition defined in The Karnataka Professional Educational Institutions (Regulation of Admission and Determination of Fee) Act, 2006 read with the Karnataka Professional Educational Institutions (Regulation of Admission and Determination of Fee) Amendment) Act, 2017 and the Income Tax Act 1961 Section 115 C (e) & 6, i.e., “ Non Resident Indian” means an individual residing outside India who is a citizen of India or is a Person of Indian Origin and includes Persons of Indian Origin and Overseas Citizens of India.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nNon Resident Indian candidate means, a candidate born to a parent of Indian Origin and residing outside the country and who have passed the qualifying equivalent examination outside India.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nFor the purpose of verification e‐document may be considered with regard to NRI sponsored certificate subject to submitting the original at the time of taking the admission.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nMandatory Documents required for NRI candidate:-",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. Candidate’s parents resident certificate issued by the Embassy of that country complying with the Income Tax Rules / any other certificates to establish evidence that they are resident of that country / affidavit on Rs.100/‐ e‐stamp paper to that effect.\n2.Candidate’s passport / VISA / Resident VISA.\n3. Citizenship of the candidate.\n4. Income Tax Documents required as per the Income Tax Act 1961.\n5. Candidate’s study certificate for having studied outside India where applicable for the qualifying examination.\n6. 10 th Standard, Date of birth proof & 12 th standard marks card.\n7. Entrance test rank card.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ), //enter below
          ],
        ),
      ),
    );
  }
}

class LateralEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Lateral Entry', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Text(
              "LATERAL ENTRY to III SEMESTER for Diploma / B.Sc. students",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nELIGIBILITY CRITERIA:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nNo candidate shall be eligible for admission to Government Seats unless he is a citizen of India and satisfies eligibility conditions. He/she should have appeared for DCET examination.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nEach condition is specified as a clause and is individually referred by a code. The documents to be produced during verification of documents in support of the claim for each of the Clauses.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),

            Text(
              "\nThe candidates who do not satisfy any of the Clauses / Eligibility Criteria and the candidates who do not produce the prescribed documents in original will not be eligible for admission to professional courses under Government quota seats.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),

            Text(
              "\nOther than the certificate mentioned in clauses, if a candidate claiming seat under Article 371 (j) Hyderabad-Karnataka region reservation, candidate should produce eligibility certificate from the concerned Assistant Commissioner in Annexure-A as per the format.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),

            Text(
              "\nCandidates should have passed any diploma or equivalent examination in Karnataka and ovtained an aggregate minimum of 45% marks( 40% marks in case of SC,ST and Backward Classes of Karnataka Candidates. Candidates with B.Sc degree are also eligible.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ), //enter below
          ],
        ),
      ),
    );
  }
}

class FeesStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Fees Structure',
        ),
        backgroundColor: Colors.blue,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fkcet.jpg?alt=media&token=3a77e751-9fa9-46d7-a5c8-c6a5e54ba5e2'),
            Text(
              "ELIGIBILITY FOR GOVERNMENT SEATS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nQualification:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "Pass in 10+2 or equivalent with Physics, Mathematics as compulsory subjects along with Chemistry or Biotechnology or Biology or Computer science or Electronics with a minimum of 45% marks taken together in Physics, Mathematics and any one of the optional subjects.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nELIGIBILITY CLAUSES:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "The candidate should have studied and passed in one or more Government or Government recognized educational institutions located in the State of Karnataka for a minimum period of SEVEN academic years commencing from 1st standard to 2nd PUC / 12th standard as on 1st July of the year in which the Entrance Test is held.Eligibility/Admissions/allotments made to & by the colleges shall be subject to approval by AICTE/Government/University.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nDocuments to be produced:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. SSLC or 10 th Marks Card\n2. 2nd PUC / 12th standard Marks Card of the candidate.\n3. Candidate’s Study Certificate.\n4. If claiming Rural quota: – Rural Study Certificate from 1st to 10th std for Ten Complete Years.\n5. If claiming Kannada Medium quota: Kannada Medium Study Certificate from 1st to 10th std for Ten Complete Years.\n6. If claiming reservation benefits: Caste / Caste Income Certificate issued by Concerned Tahsildar- For SC / ST in Form-D, Category-I in form E and 2A, 2B, 3A and 3B in Form F.\n7. Transfer Certificate from previous Educational Institute.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ), //enter below
            Card(
              elevation: 5,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch('http://kea.kar.nic.in/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\nTo Get More Info Click Here\n",
                        style: new TextStyle(
                            fontSize: 17.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
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

class PgMtechMba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'PG M.Tech and MBA',
        ),
        backgroundColor: Colors.blue,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Text(
              "ELIGIBILITY FOR PG M.Tech and MBA",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe candidates should have obtained 50% of aggregate minimum marks taken together in all the subjects for all the years of the Degree examination. (45% of Aggregate marks in all the subjects for all the years in the Degree examination in case of candidates belonging to SC,ST and Category- 1).",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe candidates should have appeared for Post Graduate Common Entrance Test conducted by KEA.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),

            Text(
              "Candidates from Karnataka and other states are eligible",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),

            Text(
              "Eligibility of different basic UG degrees for different PG courses is as per the VTU guidelines(Ref.www.vtu.ac.in)",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.normal,
              ),
            ),
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fpgmbaseat.jpg?alt=media&token=fcb9a780-15de-4257-91e9-0c755531a828')
            //enter below
          ],
        ),
      ),
    );
  }
}
