import 'package:flutter/material.dart';
import 'package:mask_store_app/core/constant/urls.dart';
import 'package:mask_store_app/mask/data/data_source/store_data_source.dart';
import 'package:mask_store_app/mask/data/repository_impl/store_repository_impl.dart';

void main() async {
  // StoreDataSource().fetchStoresAsDtos(url: maskApiUrl);
  StoreRepositoryImpl().fetchStores();

  // runApp(const MyApp());
}
