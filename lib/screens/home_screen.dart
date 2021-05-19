import 'package:flutter/material.dart';
import 'package:flutter_cosmetic_app/models/makeup.dart';
import 'package:flutter_cosmetic_app/screens/selection_screen.dart';

import 'package:provider/provider.dart';

import '../widgets/list_home_makeups.dart';

class HomeScreen extends StatefulWidget {
  static const routeNmae = '/home-page';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isCollection = false;
  bool isSelection = false;

  @override
  Widget build(BuildContext context) {
    final allItems = Provider.of<MakeUpsProvider>(context).makeupItems;
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        children: [
          Divider(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isCollection = true;
                    isSelection = false;
                  });
                },
                child: Text('Collection',
                    style: Theme.of(context).textTheme.headline2),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isCollection = false;
                    isSelection = true;
                  });
                  Navigator.of(context).pushNamed(SelectionScreen.routeName);
                },
                child: Text('Selections',
                    style: Theme.of(context).textTheme.headline2),
              ),
            ],
          ),
          Divider(height: 30),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400,
                // childAspectRatio: 2 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: allItems.length,
              itemBuilder: (context, index) => ChangeNotifierProvider.value(
                value: allItems[index],
                child: ListHomeMakeUps(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
