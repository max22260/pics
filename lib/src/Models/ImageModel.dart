/// ahmed nagy cc 2021

class ImageModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  ImageModel({this.albumId, this.id, this.title, this.thumbnailUrl, this.url});

  ImageModel.fromJason({Map<String,dynamic> parsedJason}) {
    id = parsedJason['id'];
    albumId = parsedJason['albumId'];
    title = parsedJason['title'];
    url = parsedJason['url'];
    thumbnailUrl = parsedJason['thumbnailUrl'];
  }
}