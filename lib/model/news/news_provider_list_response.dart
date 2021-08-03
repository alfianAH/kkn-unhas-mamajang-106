/// News Provider with its categories:
/// 1. cnn-news = ekonomi, gaya-hidup
/// 2. cnbc-news = market, investment, lifestyle
/// 3. okezone-news = economy, lifestyle
/// 4. tribun-news = bisnis, lifestyle

class NewsProviderListResponse {
  /// [listApi] has 4 keys:
  /// [all] : News Provider's detail link
  /// [type] : News Provider's types detail link
  /// [listType] : List of types in News Provider
  /// [example] : Usage example of the types detail of News Provider
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