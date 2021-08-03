// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_provider_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$NewsProviderService extends NewsProviderService {
  _$NewsProviderService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NewsProviderService;

  @override
  Future<Response<NewsProviderListResponse>> getNewsProviderList() {
    final $url = '.';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<NewsProviderListResponse, NewsProviderListResponse>($request);
  }

  @override
  Future<Response<NewsProviderDetailResponse>> getNewsProviderDetail(
      String newsProviderName) {
    final $url = 'v1/$newsProviderName/';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<NewsProviderDetailResponse, NewsProviderDetailResponse>($request);
  }
}
