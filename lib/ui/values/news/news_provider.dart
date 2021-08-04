class NewsProvider{
  /// News provider's [name] to show in UI
  /// Example: CNN News
  String name;

  /// News provider's [linkName] in API
  String linkName;

  /// The list of news provider's category
  /// Usage: `category name`: `category link`
  Map<String, String> categoryMap;

  NewsProvider({
    required this.name,
    required this.linkName,
    required this.categoryMap,
  });
}

/// [newsProviders] with its categories:
/// 1. cnn-news = ekonomi, gaya-hidup
/// 2. cnbc-news = market, investment, lifestyle
/// 3. okezone-news = economy, lifestyle
/// 4. tribun-news = bisnis, lifestyle
List<NewsProvider> newsProviders = [
  // CNN News
  NewsProvider(
    name: 'CNN News',
    linkName: 'cnn-news',
    categoryMap: {
      'Semua' : '',
      'Ekonomi': 'ekonomi',
      'Gaya Hidup': 'gaya-hidup'
    },
  ),

  // CNBC News
  NewsProvider(
    name: 'CNBC News',
    linkName: 'cnbc-news',
    categoryMap: {
      'Semua' : '',
      'Pasar': 'market',
      'Investasi': 'investment',
      'Gaya Hidup': 'lifestyle'
    },
  ),

  // Okezone News
  NewsProvider(
    name: 'Okezone News',
    linkName: 'okezone-news',
    categoryMap: {
      'Semua' : '',
      'Ekonomi': 'economy',
      'Gaya Hidup': 'lifestyle'
    },
  ),

  // Tribun News
  NewsProvider(
    name: 'Tribun News',
    linkName: 'tribun-news',
    categoryMap: {
      'Semua' : '',
      'Bisnis': 'bisnis',
      'Gaya Hidup': 'lifestyle'
    },
  ),
];