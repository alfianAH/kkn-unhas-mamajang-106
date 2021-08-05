// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poster_provider_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PosterProviderService extends PosterProviderService {
  _$PosterProviderService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PosterProviderService;

  @override
  Future<Response<PosterModel>> getPosters(String posterCategoryName) {
    final $url = '$posterCategoryName';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PosterModel, PosterModel>($request);
  }
}
