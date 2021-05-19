import 'package:flutter/material.dart';
import 'package:flutter_cosmetic_app/models/makeup.dart';
import 'package:provider/provider.dart';

class SelectionItemList extends StatelessWidget {
  static const routeName = '/selection-item-list';

  @override
  Widget build(BuildContext context) {
    final prodType = ModalRoute.of(context).settings.arguments as String;
    final rightProds =
        Provider.of<MakeUpsProvider>(context).findByProdType(prodType);

    final appBarTitle = rightProds.map((el) => el.prodType).toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('${appBarTitle.replaceAll('(', '').replaceAll(')', '')}'),
      ),
      body: ListView.builder(
        itemCount: rightProds.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCart(
            img: rightProds[index].img,
            title: rightProds[index].name,
            prodType: rightProds[index].prodType,
            brand: rightProds[index].brand,
          );
        },
      ),
    );
  }
}

Widget buildCart({img, title, prodType, brand}) {
  return Card(
    child: ListTile(
      leading: Container(
        child: ClipRRect(
          child: Image.network(img),
        ),
      ),
      title: Text(title),
      subtitle: Column(
        children: [
          Text(prodType),
          Text(brand),
        ],
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
    ),
  );
}
