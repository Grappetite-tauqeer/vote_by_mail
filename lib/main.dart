import 'package:flutter/material.dart';
import 'package:vote_by_mail/Views/initial_loader.dart';
import 'package:vote_by_mail/Views/county_listing.dart';
import 'package:vote_by_mail/Config/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        fontFamily: defaultFontName,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(color: MutualActions.mainBlueColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: CountyListing(),
      home: InitialLoader(),
    );
  }
}
