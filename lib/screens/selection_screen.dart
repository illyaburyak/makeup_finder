import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/makeup.dart';
import '../widgets/selection_item.dart';

class SelectionScreen extends StatelessWidget {
  static const routeName = '/selection-screen';
  @override
  Widget build(BuildContext context) {
    final allItems = Provider.of<MakeUpsProvider>(context).makeupItems;
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
        itemCount: allItems.length,
        itemBuilder: (BuildContext context, int index) {
          return SelectionItem(
            img: allItems[index].img,
            prodType: allItems[index].prodType,
          );
        },
      ),
    );
  }
}
