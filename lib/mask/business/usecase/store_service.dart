import 'package:mask_store_app/mask/business/model/store.dart';
import 'package:mask_store_app/mask/business/repository/store_repository.dart';
import 'package:mask_store_app/mask/data/repository_impl/store_repository_impl.dart';

class StoreService {
  final StoreRepository repository = StoreRepositoryImpl();
  Future<List<Store>> getStores() async {
    return await repository.fetchStores();
  }
}
