import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullScreenImagePage extends StatelessWidget {
  String imgPath;
  FullScreenImagePage(this.imgPath);

  final LinearGradient backgroundGradient = new LinearGradient(
      colors: [new Color(0x10000000), new Color(0x30000000)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
          child: new Container(
        decoration: new BoxDecoration(gradient: backgroundGradient),
        child: new Stack(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Hero(
                tag: imgPath,
                child: PhotoView(
                  imageProvider: NetworkImage(imgPath),
                  enableRotation: false,
                  minScale: PhotoViewComputedScale.contained * 1,
                  maxScale: PhotoViewComputedScale.covered * 2,
                  backgroundDecoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ),
            new Align(
              alignment: Alignment.topCenter,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new AppBar(
                    elevation: 8.0,
                    backgroundColor: Colors.transparent,
                    leading: new IconButton(
                        icon: new Icon(Icons.close, color: Colors.black),
                        onPressed: () => Navigator.of(context).pop()),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
