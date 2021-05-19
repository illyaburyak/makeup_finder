import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/makeup.dart';
import 'selection_item.dart';

class SelectionScreen extends StatelessWidget {
  static const routeName = '/selection-screen';

  @override
  Widget build(BuildContext context) {
    final allItems = Provider.of<MakeUpsProvider>(context).makeupItems;
    final uniqType = [
      ...{...allItems.map((e) => e.prodType)}
    ];
    final unqProd = Provider.of<MakeUpsProvider>(context)
        .findByUniqProdType(uniqType)
        .toList();

    // print(unqProd);

    // final uniqType = [
    //   ...{...allItems.map((e) => e.prodType)}
    // ];

    // print(uniqType);

    // print('$uniqType -> this is uniqType');
    // print('${uniqType.length} -> this is lenght of uniq type');

    // print('$getTypes -> this is all types');

    // final allGood = allItems
    //     .map((el) => el.prodType).where((el) => el == );

    // print(allGood);

    // final allGood = allItems.map((e) => e.prodType).where((el) => el == uniqType.)

    //  List<MakeUp>  allGood =
    //       allItems.where((el, index) => ).toList();

    // bool goodUniq;

    // for (int i = 0; i <= allItems.length; i++) {
    //   goodUniq = allItems.contains(uniqType[i]);
    //   // goodUniq = allItems.every((el) => el.prodType == uniqType[i]);
    // }
    // print(goodUniq);

    // print(goodUniq);

    return Scaffold(
      appBar: AppBar(
        title: Text('All Sections'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return SelectionItem(
            prodType: allItems[index].prodType,
            img: allItems[index].img,
          );
        },
      ),
    );
  }
}
