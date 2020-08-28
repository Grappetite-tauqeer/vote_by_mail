import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}


String validatePasswordLength(String value) {
  if (value.length < 3)
    return 'Please enter valid password';
  else
    return null;
}
String validateEmpty(String value) {
  if (value.length < 3)
    return '''The field can't be empty''';
  else
    return null;
}

String defaultFontName = 'Roboto';

TextStyle normalTextStyle = TextStyle( fontFamily: defaultFontName,
  fontSize: 16,
);

TextStyle normalTextStyleWithUnderline = TextStyle( fontFamily: defaultFontName,
  fontSize: 16,
    decoration: TextDecoration.underline
);

TextStyle mediumTextStyle = TextStyle( fontFamily: defaultFontName,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.black ,
);

TextStyle mediumButtonTextStyle = TextStyle( fontFamily: defaultFontName,
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.white ,
);




TextStyle loaderTitle =  TextStyle( fontFamily: defaultFontName,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black ,
    decoration: TextDecoration.none
);


TextStyle boldTextStyle = TextStyle( fontFamily: defaultFontName,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

TextStyle appBarStyle = TextStyle(
  fontFamily: defaultFontName,
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);




class MutualActions {



  static openLink(String url) async {



    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }


  }

  static Color mainOrangeColor = Color.fromRGBO(234, 122, 48, 1.0);
  static Color mainBlueColor = Color.fromRGBO(29, 40, 87, 1.0);
  static Color lightOrangeColor = Color.fromRGBO(244, 192, 153, 1.0);
  static Color redColor = Color.fromRGBO(210, 36, 54, 1.0);


  static BoxDecoration backGroundDecorater = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.white,
            lightOrangeColor,
            mainOrangeColor,
          ])
  );


  static void goToView(var newView , BuildContext context) {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => newView),
    );

  }


  //side_menu

  static List<String> countiesList =
  ['Alachua',
  'Baker',
    'Bay',
    'Bradford',
    'Brevard',
    'Broward',
    'Calhoun',
    'Charlotte',
    'Citrus',
    'Clay','Collier',
  'Columbia','DeSoto','Dixie','Duval','Escambia','Flagler','Franklin','Gadsden','Gilchrist',
  'Glades','Gulf','Hamilton','Hardee','Hendry','Hernando','Highlands',
  'Hillsborough','Holmes','Indian River',
  'Jackson','Jefferson','Lafayette','Lake','Lee','Leon','Levy','Liberty','Madison','Manatee'
  ,'Marion','Martin','Miami-Dade','Monroe','Nassau',
  'Okaloosa','Okeechobee','Orange','Osceola','Palm Beach','Pasco','Pinellas'
  ,'Polk','Putnam','Santa Rosa','Sarasota','Seminole','St. Johns','St Lucie','Sumter',
    'Suwannee','Taylor','Union','Volusia','Wakulla','Walton','Washington'];


  static List<String> c = [];
}




class SpacedRow extends StatelessWidget {

  SpacedRow({this.currentWidget});

  final Widget currentWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
          ),
        ),
        Expanded(
          flex: 10,
          child: currentWidget,
        ),
        Expanded(
          flex: 2,
          child: Container(
          ),
        ),
      ],
    );
  }
}
class CustomSpacedRow extends StatelessWidget {

  CustomSpacedRow({this.currentWidget,this.ratio});

  final Widget currentWidget;
  final int ratio;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: this.ratio,
          child: Container(
          ),
        ),
        Expanded(
          flex: 10,
          child: currentWidget,
        ),
        Expanded(
          flex: this.ratio,
          child: Container(
          ),
        ),
      ],
    );
  }
}
class SpacedRowWithTwoItems extends StatelessWidget {
  SpacedRowWithTwoItems({this.currentWidget,this.currentWidget2});
  final Widget currentWidget;

  final Widget currentWidget2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Container(
          ),
        ),
        Expanded(
          flex: 10,
          child: currentWidget,
        ),

        SizedBox(width: 8,),

        Expanded(
          flex: 10,
          child: currentWidget2,
        ),
        Expanded(
          flex: 4,
          child: Container(
          ),
        ),
      ],
    );
  }
}


class SpacedRowWitIcon extends StatelessWidget {

  SpacedRowWitIcon({this.currentWidget,this.iconData});

  final IconData iconData;
  final Widget currentWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
          ),
        ),
        Icon(
          iconData,
          color: Colors.black,
          size: 20.0,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 10,
          child: currentWidget,
        ),
        SizedBox(
          width: 28,
        ),
        Expanded(
          flex: 2,
          child: Container(
          ),
        ),
      ],
    );
  }
}





