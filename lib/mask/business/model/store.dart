import 'package:mask_store_app/mask/data/dto/store_dto.dart';

class Store {
  final String addr;
  final String code;
  final String createdAt;
  final double lat;
  final double lng;
  final String name;
  final String remainStat;
  final String stockAt;
  final String type;
  Store({
    required this.addr,
    required this.code,
    required this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStat,
    required this.stockAt,
    required this.type,
  });

  factory Store.fromDto(StoreDto dto) {
    return Store(
      addr: dto.addr ?? '',
      code: dto.code ?? '',
      createdAt: dto.createdAt ?? '',
      lat: dto.lat ?? 37.543569,
      lng: dto.lng ?? 126.8997156,
      name: dto.name ?? '',
      remainStat: dto.remainStat ?? '',
      stockAt: dto.stockAt ?? '',
      type: dto.type ?? '',
    );
  }
}
