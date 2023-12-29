import 'package:mask_store_app/mask/business/model/store.dart';

abstract interface class StoreRepository {
  Future<List<Store>> fetchStores();
}
