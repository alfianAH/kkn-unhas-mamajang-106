import 'package:chopper/chopper.dart';
import 'package:kkn_unhas_mamajang_106/model/poster/poster_model.dart';
import 'package:kkn_unhas_mamajang_106/service/news/news_model_converter.dart';

part 'poster_provider_service.chopper.dart';

@ChopperApi()
abstract class PosterProviderService extends ChopperService{

  static PosterProviderService create(){
    final client = ChopperClient(
      baseUrl: "posters/api/",
      services: [
        _$PosterProviderService(),
      ],
      interceptors: [HttpLoggingInterceptor()],
      converter: NewsModelConverter(),
      errorConverter: JsonConverter(),
    );

    return _$PosterProviderService(client);
  }

  @Get(path: '{posterCategoryName}')
  Future<Response<PosterModel>> getPosters(
      @Path() String posterCategoryName);
}