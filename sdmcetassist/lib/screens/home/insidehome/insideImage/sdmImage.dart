import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class SdmImages extends StatelessWidget {
  final imagelist = [
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FAdmin%20statue.jpg?alt=media&token=98ce0133-37b3-441b-9811-bb52165b539b',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FAnnotation%202020-02-23%20202905.jpg?alt=media&token=714c636d-2d73-4f52-adb6-8711420456a3',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2FAnnotation%202020-02-23%20203527.jpg?alt=media&token=7941ba4a-478a-4939-ab02-b99c730d1254',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2FAnnotation%202020-02-23%20203601.jpg?alt=media&token=67070da7-3db6-4a89-8bb4-97c7b04d197d',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2FAnnotation%202020-02-23%20221127.jpg?alt=media&token=f9c0819d-4ccd-4719-af8e-185f14292448',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2FAriel%20view%20.jpg?alt=media&token=117e005d-6bc1-4688-a277-cccdfbe05ab0',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2FCollege%20AdminPic.jpg?alt=media&token=58d3360a-ac8a-4477-83cc-8871f7d59d24',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fbasketball%20court.jpg?alt=media&token=0248312e-7404-482b-9063-878487dd06e6',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fcafe%20far%20view.jpg?alt=media&token=c561d0b6-82db-4077-b77b-d35522103e52',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fcolleege%20ground.jpg?alt=media&token=baa5f102-3d19-469b-b10f-ede9c130976a',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Ffar%20ariel%20view.jpg?alt=media&token=a0436e93-a2f1-444d-acde-f51a58391838',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fganesh%20temple.jpg?alt=media&token=433414f0-37a5-4aeb-bdd7-16ad8563f999',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fganesh%20temple%20inside.jpg?alt=media&token=f74aaeb7-3d09-49ba-b954-7c945ae5ff94',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fgirls%20hostel.jpg?alt=media&token=27a2828d-8f12-40c2-8b1f-3eeac3006d1a',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Flibrary%20.jpg?alt=media&token=7aa25faa-c9d3-4cb1-855d-b2d5f8f5ea7d',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fmain%20seminar%20hall.jpg?alt=media&token=e446cd80-37c3-4b26-b3e1-da4155bf0679',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fmba%20block%20ariel%20view.jpg?alt=media&token=166fa65a-4ad5-4f4a-8dd6-f69d0c140078',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fmba%20ccf%20close%20ariel.jpg?alt=media&token=1a3d22f6-51e8-4dbf-8c91-5715ec9f9543',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fmba%20seminar%20hall.jpg?alt=media&token=27ff4145-fef0-42e1-b29e-2afb34fc6340',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fsports.jpg?alt=media&token=c7e1a640-cb28-4aa3-aec7-f48f55cccb26',
    'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fsdmcet%20Images%2Fsuruchi.jpg?alt=media&token=21c4aab8-4e87-4b51-b97c-d6559b52ad5c'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sdmcet Images', /*style:TextStyle(color:Colors.black)*/
        ),
        actions: <Widget>[
          Center(
            child: Text(
              'Swipe Left for more Images\nTap to Zoom',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          )
        ],
        elevation: 10.0,
      ),
      body: PhotoViewGallery.builder(
        itemCount: imagelist.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(
              imagelist[index],
            ),
            minScale: PhotoViewComputedScale.contained * 0.8,
            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },
        scrollPhysics: BouncingScrollPhysics(),
        backgroundDecoration:
            BoxDecoration(color: Theme.of(context).backgroundColor),
        loadingChild: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
