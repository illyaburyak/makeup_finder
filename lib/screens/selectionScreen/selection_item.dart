import 'package:flutter/material.dart';
import 'package:flutter_cosmetic_app/screens/selectionScreen/selection_item_list.dart';

class SelectionItem extends StatelessWidget {
  final String img;
  final String prodType;

  const SelectionItem({this.img, this.prodType});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 8.0, right: 8.0),
        child: Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(SelectionItemList.routeName,
                      arguments: prodType);
                },
                child: Image.network(
                  img,
                  height: 100,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              width: 400,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                width: double.infinity,
                height: 50,
                color: Colors.black38,
                child: Text(
                  prodType,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
