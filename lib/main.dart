import 'package:flutter/material.dart';
import 'package:flutter_cosmetic_app/screens/homeScreen/home_screen.dart';
import 'package:flutter_cosmetic_app/screens/makeup_details_screen.dart';
import 'package:flutter_cosmetic_app/screens/selectionScreen/selection_item_list.dart';
import 'package:flutter_cosmetic_app/screens/selectionScreen/selection_screen.dart';
import 'package:provider/provider.dart';

import 'models/makeup.dart';
import 'screens/profile_screen.dart';
import 'screens/search_screen.dart';
import 'widgets/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MakeUpsProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          buttonColor: Colors.white,
          primaryColor: Colors.black,
          accentColor: Colors.white,
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            headline2: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            headline3: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            headline4: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
        ),
        routes: {
          '/': (ctx) => NavBar(),
          HomeScreen.routeNmae: (ctx) => HomeScreen(),
          SearchScreen.routeName: (ctx) => SearchScreen(),
          ProfileScreen.routeName: (ctx) => ProfileScreen(),
          MakeupDetailsScreen.routeName: (ctx) => MakeupDetailsScreen(),
          SelectionScreen.routeName: (ctx) => SelectionScreen(),
          SelectionItemList.routeName: (ctx) => SelectionItemList(),
        },
      ),
    );
  }
}
