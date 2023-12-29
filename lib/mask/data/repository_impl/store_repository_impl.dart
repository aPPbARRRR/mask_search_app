import 'package:mask_store_app/core/constant/urls.dart';
import 'package:mask_store_app/mask/business/model/store.dart';
import 'package:mask_store_app/mask/business/repository/store_repository.dart';
import 'package:mask_store_app/mask/data/data_source/store_data_source.dart';
import 'package:mask_store_app/mask/data/dto/store_dto.dart';

class StoreRepositoryImpl implements StoreRepository {
  StoreDataSource dataSource = StoreDataSource();
  @override
  Future<List<Store>> fetchStores() async {
    List<StoreDto> storeDtos =
        await dataSource.fetchStoresAsDtos(url: maskApiUrl);
    return storeDtos.map((dto) => Store.fromDto(dto)).toList();
  }
}
