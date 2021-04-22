///  ahmed nagy cc 2021
import 'package:flutter/material.dart';
import 'package:pics/src/Models/ImageModel.dart';
import 'package:pics/src/styles/style.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> imageList;
  final ScrollController scrollController;

  ImageList({this.imageList, this.scrollController});

  @override
  Widget build(context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: imageList.length,
      itemBuilder: (context, int index) {
        return buildImage(imageList[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.blueGrey, width: 14),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.network(image.url),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              image.title,
              textAlign: TextAlign.center,
              style: Style.descTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
