import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../models/makeup.dart';

class MakeupDetailsScreen extends StatelessWidget {
  static const routeName = '/makeup-details-screen';

  @override
  Widget build(BuildContext context) {
    final prodId = ModalRoute.of(context).settings.arguments as String;
    final productData = Provider.of<MakeUpsProvider>(context).findById(prodId);
    print(productData);

    return Scaffold(
      appBar: AppBar(
        title: Text('${productData.name.substring(13)}'),
        titleSpacing: 10,
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            child: SlidingUpPanel(
              panel: Container(
                color: Colors.black,
                padding: EdgeInsets.only(top: 40),
                height: 150,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          productData.descr,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Divider(height: 30),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'See More like this',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Container(
                              height: 200,
                              width: double.infinity,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (BuildContext context, int index) {
                                  return ClipRRect(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 7, right: 7),
                                      child: Image.network(
                                        'https://www.purpicks.com/wp-content/uploads/2018/06/Rejuva-Minerals-Multi-Purpose-Powder-Blush-_-Eye-1.jpg',
                                        width: 150,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              collapsed: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20),
                      right: Radius.circular(20),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                          Colors.black,
                        )),
                        onPressed: () {
                          print('you got it');
                        },
                        child: Text(
                          'Want',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_upward),
                    Container(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Bought',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              body: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    child: Image.network(
                      productData.img,
                      width: double.infinity,
                      height: 450,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                '${productData.name.substring(13)}',
                                softWrap: true,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Divider(height: 10),
                            Text(
                              productData.price.toString(),
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Raiting',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Divider(height: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 23,
                                    ),
                                    Text(
                                      '7.5',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 23),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
