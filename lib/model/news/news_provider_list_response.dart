/// News Provider with its categories:
/// 1. cnn-news = ekonomi, gaya-hidup
/// 2. cnbc-news = market, investment, lifestyle
/// 3. okezone-news = economy, lifestyle
/// 4. tribun-news = bisnis, lifestyle

class NewsProviderListResponse {
  Map<String, dynamic>? listApi;
  String? author;
  String? source;

  NewsProviderListResponse({
    this.listApi,
    this.author,
    this.source});

  NewsProviderListResponse.fromJson(dynamic json) {
    listApi = json["listApi"];
    author = json["author"];
    source = json["source"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["listApi"] = listApi;
    map["author"] = author;
    map["source"] = source;
    return map;
  }

}