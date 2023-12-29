import 'package:flutter/material.dart';
import 'package:mask_store_app/mask/presentation/view_model/stores_view_model.dart';
import 'package:mask_store_app/mask/presentation/widget/stores_list_view.dart';

import '../../business/model/store.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final StoresViewModel viewModel = StoresViewModel();

    return FutureBuilder(
        future: viewModel.fetchData(),
        builder: (context, snapShot) {
          if (snapShot.connectionState != ConnectionState.done)
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );

          return Scaffold(
            appBar: AppBar(
              title: Text(
                  '마스크 재고 있는 곳 : ${viewModel.stores.where((store) => store.remainStat != 'break').length} 개소'),
            ),
            body: viewModel.stores.length != 0
                ? StoresListView(stores: viewModel.stores)
                : Center(
                    child: Text('검색결과가 없습니다.'),
                  ),
          );
        });
  }
}
