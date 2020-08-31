import 'package:flutter/material.dart';
import 'dart:math';
import 'select_country_new.dart';
import 'package:vote_by_mail/Config/config.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';




class InitialLoader extends StatefulWidget {
  @override
  _InitialLoaderState createState() => _InitialLoaderState();
}

class _InitialLoaderState extends State<InitialLoader> with TickerProviderStateMixin {
  Animation _arrowAnimation, _heartAnimation;

  AnimationController _arrowAnimationController, _heartAnimationController;

  void gointNotNull() {
    Future.delayed(const Duration(seconds: 1), () {
      MutualActions.goToView(SelectCountyNew(hasCity: false,), context);
    });

  }

  void going(String name) {
    Future.delayed(const Duration(seconds: 1), () {
      MutualActions.goToView(SelectCountyNew(hasCity: true, cityName: name,), context);
    });

    return;

  }


  void getLocation() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();

    String check =  prefs.getString('county');


    if(check != null){

      this.going(check);

      return;

    }

    print('Not null');

    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {

        gointNotNull();

        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {

        gointNotNull();


        return;
      }
    }

    _locationData = await location.getLocation();


    print(_locationData);

    List<Placemark> placemark = await Geolocator().placemarkFromCoordinates(_locationData.latitude,_locationData.longitude,localeIdentifier: 'en_US');
///
    if(placemark != null) {
      if(placemark.length > 0){
      String place =  placemark[0].subAdministrativeArea;
      await prefs.setString('county',place );


      this.going(place);

      return;

      }
      else {

        gointNotNull();
     return;

      }
    }
    else {
      gointNotNull();
      return;

    }

    gointNotNull();

    print(placemark);

    return;


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

   // getLocation();


    _arrowAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 300));
    _arrowAnimation =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController);


    _heartAnimationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    _heartAnimation = Tween(begin: 150.0, end: 170.0).animate(CurvedAnimation(
        curve: Curves.bounceOut, parent: _heartAnimationController));

    _heartAnimationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _heartAnimationController.repeat();
      }

    });

    _heartAnimationController.forward();

    gointNotNull();

  }
  /**/


  void moveToNextView() {

    Future.delayed(const Duration(seconds: 1), () {
      MutualActions.goToView(SelectCountyNew(), context);
    });

  }
  Widget firstChild() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        AnimatedBuilder(
          animation: _arrowAnimationController,
          builder: (context, child) => Transform.rotate(
            angle: _arrowAnimation.value,
            child: Icon(
              Icons.expand_more,
              size: 50.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          secondChild(),
          SizedBox(
            height: 80.0,
          ),

        ],
      ),
    );
  }

  Widget secondChild() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: AnimatedBuilder(
            animation: _heartAnimationController,
            builder: (context, child) {
              return Center(
                child: Image(
                  image: AssetImage('images/logo.png'),
                  width: _heartAnimation.value,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _arrowAnimationController?.dispose();
    _heartAnimationController?.dispose();
  }

}
