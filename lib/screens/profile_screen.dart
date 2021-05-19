import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text(
                  'My Cosmetics',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    child: Image.network(
                      'https://cdn.psychologytoday.com/sites/default/files/styles/article-inline-half/public/blogs/1104/2012/11/111493-109302.jpg?itok=YQUrufRF',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
          Divider(height: 23),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text(
                  'Want',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                child: Text(
                  'Bought',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                child: Text(
                  'Brands',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ],
          ),
          Divider(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '34 Products',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    'Sorted by rating',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      icon: isPressed
                          ? Icon(
                              Icons.apps,
                              color: Theme.of(context).buttonColor,
                            )
                          : Icon(
                              Icons.view_list,
                              color: Theme.of(context).buttonColor,
                            ),
                      onPressed: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.swap_vert,
                        color: Theme.of(context).buttonColor,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        color: Theme.of(context).buttonColor,
                      ),
                      onPressed: () {}),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
