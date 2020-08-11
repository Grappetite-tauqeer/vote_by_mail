import 'package:flutter/material.dart';
import 'package:vote_by_mail/Config/config.dart';
import 'package:vote_by_mail/Model/county.dart';
import 'county_listing.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'dart:async';
import 'dart:io';


class DetailView extends StatefulWidget {

  DetailView({@required this.countySelected});

  final String countySelected;

  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  County currentCounty;

  void openEmail() async {

    if(this.currentCounty.email.length == 0) {
      return;
    }



  }

  @override
  Widget build(BuildContext context) {

    this.currentCounty = County(this.widget.countySelected);

    return Scaffold(
      appBar: AppBar(
        title: Text(
            this.widget.countySelected
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(

                            'Register to Vote By Mail in ${this.currentCounty.name} County!',
                            style: boldTextStyle,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(

                            this.currentCounty.personInchargeName,
                            style: normalTextStyle,
                          ),
                          Text(

                            this.currentCounty.phoneNumber,
                            style: normalTextStyle,
                          ),
                          Text(

                            this.currentCounty.name,
                            style: normalTextStyle,
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Text(

                              this.currentCounty.email,
                              style: normalTextStyle,
                            ),
                          ),
                          Text(

                            this.currentCounty.link,
                            style: normalTextStyle,
                          ),

                        ],
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
                        'Register Now!' ,
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
