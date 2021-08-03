class NewsProviderDetailResponse {
  int? code;
  String? status;
  String? messages;
  int? total;
  List<NewsData>? data;

  NewsProviderDetailResponse({
      this.code, 
      this.status, 
      this.messages, 
      this.total, 
      this.data});

  NewsProviderDetailResponse.fromJson(dynamic json) {
    code = json["code"];
    status = json["status"];
    messages = json["messages"];
    total = json["total"];
    if (json["data"] != null) {
      data = [];
      json["data"].forEach((v) {
        data?.add(NewsData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["code"] = code;
    map["status"] = status;
    map["messages"] = messages;
    map["total"] = total;
    if (data != null) {
      map["data"] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class NewsData {
  String? title;
  String? link;
  String? contentSnippet;
  String? isoDate;
  /// [image] has 2 keys, [small] and [large]
  Map<String, String>? image;

  NewsData({
      this.title, 
      this.link, 
      this.contentSnippet, 
      this.isoDate, 
      this.image});

  NewsData.fromJson(dynamic json) {
    title = json["title"];
    link = json["link"];
    contentSnippet = json["contentSnippet"];
    isoDate = json["isoDate"];
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["title"] = title;
    map["link"] = link;
    map["contentSnippet"] = contentSnippet;
    map["isoDate"] = isoDate;
    map["image"] = image;

    return map;
  }

}
