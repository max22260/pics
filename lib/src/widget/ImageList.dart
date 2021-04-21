import 'package:flutter/material.dart';
import 'package:pics/src/Models/ImageModel.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> imageList;

  ImageList({this.imageList});

  @override
  Widget build(context) {


    final descTextStyle = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.w300,
      fontFamily: 'Roboto',
      letterSpacing: 0.0,
      fontSize: 18,
      height: 1,
    );



    return ListView.builder(
      itemCount: imageList.length,
      itemBuilder: (context, int index) {
        return Container(

          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.blue
          ),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(imageList[index].url),
              Text(
                imageList[index].title,
                textAlign: TextAlign.center,
                style: descTextStyle,
              )
            ],
          ),
        );
      },
    );
  }
}
