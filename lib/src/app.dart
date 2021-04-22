/// ahmed nagy cc 2021
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:pics/src/Models/ImageModel.dart';
import 'package:pics/src/widget/ImageList.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  ScrollController _scrollController = new ScrollController();
  var temblor = Colors.blueGrey;
  var counter = 0;
  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos/');
  List<ImageModel> images = [];

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'app',
          ),
          backgroundColor: temblor,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: temblor,
          onPressed: fetchImage,
        ),
        body: ImageList(
          imageList: images,
          scrollController: _scrollController,
        ),
      ),
    );
  }

  void fetchImage() async {
    counter += 1;
    url = Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter');
    final response = await get(url);
    final imageModel =
        ImageModel.fromJason(parsedJason: json.decode(response.body));
    setState(() {
      images.add(imageModel);
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 300),
      );
    });
  }
}
