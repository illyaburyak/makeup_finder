import 'package:flutter/material.dart';
import 'package:flutter_cosmetic_app/models/makeup.dart';
import 'package:flutter_cosmetic_app/screens/makeup_details_screen.dart';
import 'package:provider/provider.dart';

class ListHomeMakeUps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final makeUps = Provider.of<MakeUp>(context);
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: ClipRRect(
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(MakeupDetailsScreen.routeName,
                  arguments: makeUps.id);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Image.network(
                makeUps.img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          header: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            height: 40,
            child: Text(
              makeUps.name.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              overflow: TextOverflow.fade,
            ),
          ),
          footer: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: GridTileBar(
              // backgroundColor: Colors.black,
              leading: Text(
                makeUps.prodType,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              title: Text(
                '${makeUps.name}',
                // style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              trailing: Text(
                '${makeUps.price.toString()}\$',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
