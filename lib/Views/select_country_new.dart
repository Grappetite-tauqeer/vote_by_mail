import 'package:flutter/material.dart';
import 'package:vote_by_mail/Config/config.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'about_us.dart';
import 'detail_view.dart';

class SelectCountyNew extends StatefulWidget {
  @override
  _SelectCountyNewState createState() => _SelectCountyNewState();
}

class _SelectCountyNewState extends State<SelectCountyNew> {
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

                  popupBarrierColor: Colors.black.withAlpha(70),
                  showSelectedItem: true,
                  showClearButton: false,
                  mode: Mode.BOTTOM_SHEET,
                  maxHeight: 500,
                  items: MutualActions.countiesList,
                  label: "Search your county",
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
                    labelText: "Search your county",
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
