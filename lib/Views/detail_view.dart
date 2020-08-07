import 'package:flutter/material.dart';
import 'package:vote_by_mail/Config/config.dart';
import 'package:vote_by_mail/Model/county.dart';
import 'county_listing.dart';

class DetailView extends StatelessWidget {

  DetailView({@required this.countySelected});

  final String countySelected;

  County currentCounty;


  @override
  Widget build(BuildContext context) {

    this.currentCounty = County(this.countySelected);

    return Scaffold(
      appBar: AppBar(
        title: Text(
            this.countySelected
        ),
      ),
      body: SafeArea(
        child: Container(

          child: Column(
            children: <Widget>[
              Expanded(
                flex: 92,
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                      child: Text(

                        this.currentCounty.detail,
                        style: TextStyle(
                          fontSize: 18 ,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  color: MutualActions.redColor,

                  child: FlatButton(
                    onPressed: (){

                      MutualActions.openLink(this.currentCounty.link);

                    },
                    child: Center(
                      child: Text(
                        'Explore' ,
                        style: TextStyle(
                          color: Colors.white ,
                          fontWeight: FontWeight.w500,
                          fontSize: 20
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
    );
  }
}
