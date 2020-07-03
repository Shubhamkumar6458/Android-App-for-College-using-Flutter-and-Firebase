import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Deans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Text(
            "",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 10,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "DR. K. GOPINATH",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Principal",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.asset('assets/Principal-Dr-K-Gopinath-2-1.jpg'),
          Text(
            "FROM THE PRINCIPLES DESK",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "SDMCET, Dharwad has a multi-dimensional engagement with industry to industry participation in SDMCET’s mission. Our main objective remains to curtail the disconnect between educationalists and businesses by providing a cohesive learning environment for all the students.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nA. V. KULKARNI",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Dean Administration",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2Favkulkarni-min.jpg?alt=media&token=08120e5f-7af1-42fb-810e-20b3ba21dc71',
            fit: BoxFit.contain,
          ),
          Text(
            "\nDR RAMESH L CHAKRASALI",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Dean Academic Program & Research and Development",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2Framesh-min.jpg?alt=media&token=e34f99d0-91b9-43ba-85b5-3a412637ef39',
            fit: BoxFit.contain,
          ),
          Text(
            "\nC. M. CHELLI",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Dean Infrastructure Planning & Development",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2FProf.-Clement-Chelli-min.jpg?alt=media&token=d89dbb2f-79f2-4d47-a14a-b3df378e589b',
            fit: BoxFit.contain,
          ),
          Text(
            "\nPROF.D.SHREENIVAS BHAT",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Dean Student Welfare",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2Fdsbhat.jpg?alt=media&token=46dab66a-b042-459d-815b-6291990eda33',
            fit: BoxFit.contain,
          ),
          Text(
            "\nSAVITRI RAJU",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Controller of Examinations",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2FSavitri-Raju-min.jpg?alt=media&token=36899e96-1823-4249-8931-ccf78e338c26',
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
