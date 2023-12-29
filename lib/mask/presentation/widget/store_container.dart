import 'package:flutter/material.dart';

import '../../business/model/store.dart';

class StoreContainer extends StatelessWidget {
  const StoreContainer({
    Key? key,
    required this.store,
  }) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.amber,
      child: Row(children: [
        Expanded(
          flex: 7,
          child: Column(
            children: [
              Text(store.name),
              Text(store.addr),
              Text(
                '거리. lat, lang 이용해서 구할 것.\n코어 - 유틸에서 구하는 로직 만들고 유즈케이스에서 활용할 것',
              )
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [Text('충분'), Text(store.remainStat)],
          ),
        )
      ]),
    );
  }
}
