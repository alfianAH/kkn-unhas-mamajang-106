class NewsProvider{
  /// News provider's [name] to show in UI
  /// Example: CNN News
  String name;

  /// News provider's [linkName] in API
  String linkName;

  /// The list of news provider's [categoryName] to show in UI
  /// Example: Ekonomi
  List<String> categoryName;

  /// The list of news provider's [categoryLinkName] in API
  List<String> categoryLinkName;

  NewsProvider({
    required this.name,
    required this.linkName,
    required this.categoryName,
    required this.categoryLinkName,
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
    categoryName: ['Semua', 'Ekonomi', 'Gaya Hidup'],
    categoryLinkName: ['', 'ekonomi', 'gaya-hidup']
  ),

  // CNBC News
  NewsProvider(
    name: 'CNBC News',
    linkName: 'cnbc-news',
    categoryName: ['Semua', 'Pasar', 'Investasi', 'Gaya Hidup'],
    categoryLinkName: ['', 'market', 'investment', 'lifestyle'],
  ),

  // Okezone News
  NewsProvider(
    name: 'Okezone News',
    linkName: 'okezone-news',
    categoryName: ['Semua', 'Ekonomi', 'Gaya Hidup'],
    categoryLinkName: ['', 'economy', 'lifestyle']
  ),

  // Tribun News
  NewsProvider(
    name: 'Tribun News',
    linkName: 'tribun-news',
    categoryName: ['Semua', 'Bisnis', 'Gaya Hidup'],
    categoryLinkName: ['', 'bisnis', 'lifestyle']
  ),
];