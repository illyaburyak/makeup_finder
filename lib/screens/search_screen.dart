import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/search';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello search screen',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
