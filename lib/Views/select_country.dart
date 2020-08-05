import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:vote_by_mail/Config/config.dart';

class SelectCounty extends StatefulWidget {
  @override
  _SelectCountyState createState() => _SelectCountyState();
}

class _SelectCountyState extends State<SelectCounty> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/HomeScreen.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  SizedBox(height: 2,),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: GestureDetector(
                          onTap: (){

                          },
                          child: Icon(
                            Icons.info_outline, color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(

                child: Column(

                  children: <Widget>[
                    Expanded(
                      flex: 14,
                      child: Container(

                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Container(
                        child: SpacedRow(
                          currentWidget: FlatButton(
                            onPressed: (){

                            },
                            child: Container(
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 20,
                                    child: Container(
                                      child: Text(
                                        'Select your county',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),

                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      color: Colors.grey,
                                      child: SizedBox(
                                        height: double.infinity,
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 11,
              child: Container(
                child: Center(
                  child: SpacedRow(
                    currentWidget: SizedBox(
                      height: 50,
                      child: FlatButton(

                        color: Color.fromRGBO(27, 38, 81, 10),
                        onPressed: (){

                        },
                        child: Text(
                          'Not in Florida? Click Here',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
