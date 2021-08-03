class NewsProvider{
  String name;
  String linkName;
  List<String> categoryName;
  List<String> categoryLinkName;

  NewsProvider({
    required this.name,
    required this.linkName,
    required this.categoryName,
    required this.categoryLinkName,
  });
}

/// News Provider with its categories:
/// 1. cnn-news = ekonomi, gaya-hidup
/// 2. cnbc-news = market, investment, lifestyle
/// 3. okezone-news = economy, lifestyle
/// 4. tribun-news = bisnis, lifestyle

List<NewsProvider> newsProviders = [
  NewsProvider(
    name: 'CNN News',
    linkName: 'cnn-news',
    categoryName: ['Ekonomi', 'Gaya Hidup'],
    categoryLinkName: ['ekonomi', 'gaya-hidup']
  ),
  NewsProvider(
    name: 'CNBC News',
    linkName: 'cnbc-news',
    categoryName: ['Pasar', 'Investasi', 'Gaya Hidup'],
    categoryLinkName: ['market', 'investment', 'lifestyle'],
  ),
  NewsProvider(
    name: 'Okezone News',
    linkName: 'okezone-news',
    categoryName: ['Ekonomi', 'Gaya Hidup'],
    categoryLinkName: ['economy', 'lifestyle']
  ),
  NewsProvider(
    name: 'Tribun News',
    linkName: 'tribun-news',
    categoryName: ['Bisnis', 'Gaya Hidup'],
    categoryLinkName: ['bisnis', 'lifestyle']
  ),
];