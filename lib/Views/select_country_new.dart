import 'package:flutter/material.dart';
import 'package:vote_by_mail/Config/config.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'about_us.dart';
import 'detail_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:async_loader/async_loader.dart';
import 'dart:async';
import 'package:geolocator/geolocator.dart';





class SelectCountyNew extends StatefulWidget {
  @override
  _SelectCountyNewState createState() => _SelectCountyNewState();

  bool hasCity;
  String cityName;

  SelectCountyNew({this.hasCity,this.cityName});


}

class _SelectCountyNewState extends State<SelectCountyNew> {

  final GlobalKey<AsyncLoaderState> _asyncLoaderState = new GlobalKey<AsyncLoaderState>();

  var _asyncLoader;

  void go() async {

    await Future.delayed(const Duration(seconds: 1), (){});
    DetailView detailView = DetailView(countySelected: this.widget.cityName,);
    MutualActions.goToView(detailView, context);

    setState(() {
      this.widget.hasCity = true;
    });


  }

  void getLocation() async {


    setState(() {
      this.isLoadershowing = true;

    });
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String check =  prefs.getString('county');


    if(check != null){



  //    return;

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

        //gointNotNull();

        Alert(context: context, title: "Error!", desc: "You need to enable Location Services to find your county.").show();


         //openAppSettings();
        //await openLocationSettings();

        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {

 //       gointNotNull();

        Alert(context: context, title: "Error!", desc: "Permission not granted to find your county.").show();


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
        String p1 = placemark[0].administrativeArea;
        String p2 = placemark[0].locality;

        this.currentState = '$p1 , $p2';




        await prefs.setString('county',place );


        setState(() {


          this.widget.cityName =  place;
          
        });

        checkAndMove();
        setState(() {
          this.isLoadershowing = false;

        });


        
        return;

      }
      else {

        Alert(context: context, title: "Error!", desc: "Error while getting your location.").show();



        //gointNotNull();
        return;

      }
    }
    else {
      //gointNotNull();
      Alert(context: context, title: "Error!", desc: "Error while getting your location.").show();

      return;

    }


    print(placemark);

    return;


  }

  var TIMEOUT = const Duration(seconds: 300000);

  getMessage() async {
    return new Future.delayed(TIMEOUT, () => '');
  }



  bool isLoadershowing = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //checkAndMove();

   _asyncLoader =  new AsyncLoader(
     initState: () async => await getMessage(),
     key: _asyncLoaderState,
      renderLoad: () => new CircularProgressIndicator(strokeWidth: 4,),
      renderError: ([error]) =>
      Container(),
      renderSuccess: ({data}) => Container(),
    );

//



  }

  String currentState = "";

  void checkAndMove() {


    if(MutualActions.countiesList.contains(this.widget.cityName)) {


      this.go();
    
    }
    else {
    
      this.widget.hasCity = false;


      String message = '''You're currently in $currentState
      The Voter App currently works only in Florida. If you're from Florida you can use the search bar to find your county.  And if not you can still 'Register to Vote' by clicking the button at the bottom of the screen.''';


      Alert(context: context, title: "Sorry!", desc: message).show();




    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [


          SizedBox(
            height: 32,
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
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

                                MutualActions.goToView(AboutUs(), context);

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
                          color: Colors.white.withAlpha(0),
                        ),
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24 , bottom: 8 , left: 0 , right: 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 250,
                        child: Container(

                        ),
                      ),
                      Expanded(
                        flex: 746,
                        child: Image(
                          image:AssetImage("images/florida-map.png"),

                        ),
                      ),
                      Expanded(
                        flex: 80,
                        child: Container(

                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,

                    child: SizedBox(
                      height: 120,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 31,
                            child: Container(

                            ),
                          ),
                          Expanded(
                            flex: 38,
                            child: Image(
                              image:AssetImage("images/d_logo.png"),

                            ),
                          ),
                          Expanded(
                            flex: 31,
                            child: Container(

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),

          CustomSpacedRow(
            currentWidget: FlatButton(
              child: Container(

                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.white  , width: 2),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                    boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))]// make rounded corner of border

                  //
                ),
                child: DropdownSearch<String>(
                  dropDownButton: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ),

                  selectedItem: this.widget.hasCity ? this.widget.cityName : null ,
                  popupBarrierColor: Colors.black.withAlpha(70),
                  showSelectedItem: true,
                  showClearButton: false,
                  mode: Mode.BOTTOM_SHEET,
                  maxHeight: 500,
                  items: MutualActions.countiesList,
                  label: "Find your county",
                  onChanged: (valueSelected){

                    if(valueSelected.length == 0) {

                    }
                    else {
                      DetailView detailView = DetailView(countySelected: valueSelected,);

                      MutualActions.goToView(detailView, context);

                    }


                  },
                  showSearchBox: true,
                  searchBoxDecoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
                    labelText: "Find your county",
                  ),
                  popupTitle: Container(

                    height: 50,
                    decoration: BoxDecoration(
                      color: MutualActions.mainBlueColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      //color: Colors.blueAccent,

                      child: Center(
                        child: Text(
                          'Counties',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  popupShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
              ),
            ),
            ratio: 1,
          ),

          SizedBox(height: 16,),
          SizedBox(
            height: 50,
            child: FlatButton(
              onPressed: (){

                this.getLocation();


              },
              child: CustomSpacedRow(
                ratio: 1,
                currentWidget: Container(
                  color: Color.fromRGBO(10, 49, 97, 0.95),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(
                        FontAwesomeIcons.locationArrow, color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Locate my County' ,
                          style: boldTextStyleDown,

                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Visibility(
            visible: this.isLoadershowing,
            child: _asyncLoader,
          ),

          Expanded(
            child: Stack(

              children: [
                Row(
                  children: [

                    Expanded(
                      flex: 28,
                      child: Container(
                      ),
                    ),
                    Expanded(
                      flex: 1029,
                      child: Image(
                        image:AssetImage("images/usdMap.png"),
                      ),
                    ),
                    Expanded(
                      flex: 23,
                      child: Container(

                      ),
                    ),

                  ],
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [

                          Expanded(
                            flex: 21,
                            child: Container(

                            ),
                          ),
                          Expanded(
                            flex: 38,
                            child: GestureDetector(
                              onTap: (){
                                MutualActions.openLink('https://vote.gov/');
                              },
                              child: Image(
                                image:AssetImage("images/RegistertoVote_.png"),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 40,
                            child: Container(

                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 24,
          )

        ],
//florida-map.png
//logo.png
        //usdMap.png
        //RegistertoVote_.png

      ),
    );
  }
}


