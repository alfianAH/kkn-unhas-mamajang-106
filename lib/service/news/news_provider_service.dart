import 'package:chopper/chopper.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_detail_response.dart';
import 'package:kkn_unhas_mamajang_106/model/news/news_provider_list_response.dart';
import 'package:kkn_unhas_mamajang_106/service/news/news_model_converter.dart';

part 'news_provider_service.chopper.dart';

@ChopperApi()
abstract class NewsProviderService extends ChopperService{

  static NewsProviderService create(){
    final client = ChopperClient(
      baseUrl: "https://berita-indo-api.vercel.app/",
      services: [
        _$NewsProviderService(),
      ],
      interceptors: [HttpLoggingInterceptor()],
      converter: NewsModelConverter(),
      errorConverter: JsonConverter(),
    );

    return _$NewsProviderService(client);
  }

  @Get(path: '.')
  Future<Response<NewsProviderListResponse>> getNewsProviderList();

  @Get(path: 'v1/{newsProviderName}/{newsCategoryName}')
  Future<Response<NewsProviderDetailResponse>> getNewsProviderDetail(
      @Path() String newsProviderName,
      @Path() String newsCategoryName);
}