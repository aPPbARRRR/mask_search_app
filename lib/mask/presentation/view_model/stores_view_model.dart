import 'package:mask_store_app/mask/business/usecase/store_service.dart';

import '../../business/model/store.dart';

class StoresViewModel {
  final StoreService storeService = StoreService();

  List<Store> stores = [];

  Future<void> fetchData() async {
    stores = await storeService.getStores();
  }
}
