class PosterModel {
  int? total;
  List<PosterData>? data;

  PosterModel({
      this.total, 
      this.data});

  PosterModel.fromJson(dynamic json) {
    total = json["total"];
    if (json["data"] != null) {
      data = [];
      json["data"].forEach((v) {
        data?.add(PosterData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["total"] = total;
    if (data != null) {
      map["data"] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class PosterData {
  String? title;
  String? author;
  String? contentSnippet;
  String? isoDate;
  String? image;

  PosterData({
      this.title, 
      this.author, 
      this.contentSnippet, 
      this.isoDate, 
      this.image});

  PosterData.fromJson(dynamic json) {
    title = json["title"];
    author = json["author"];
    contentSnippet = json["contentSnippet"];
    isoDate = json["isoDate"];
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["title"] = title;
    map["author"] = author;
    map["contentSnippet"] = contentSnippet;
    map["isoDate"] = isoDate;
    map["image"] = image;
    return map;
  }

}