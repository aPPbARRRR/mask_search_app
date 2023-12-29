// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mask_store_app/mask/presentation/widget/store_container.dart';

import '../../business/model/store.dart';

class StoresListView extends StatelessWidget {
  const StoresListView({
    Key? key,
    required this.stores,
  }) : super(key: key);
  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...stores
            .map((store) => Padding(
                  padding: EdgeInsets.all(10),
                  child: StoreContainer(store: store),
                ))
            .toList()
      ],
    );
  }
}
