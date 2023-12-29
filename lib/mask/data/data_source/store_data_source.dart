import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mask_store_app/mask/data/dto/store_dto.dart';

import '../../../core/dio/dio.dart';

class StoreDataSource {
  Future<List<StoreDto>> fetchStoresAsDtos(
      {required String url, Map<String, dynamic>? queryParams}) async {
    Response res = await dio.get(url, queryParameters: queryParams);
    if (res.statusCode != 200) throw Exception(res.statusCode);
    List stores = jsonDecode(res.data)['stores'];
    return stores.map((e) => StoreDto.fromJson(e)).toList();
  }
}
