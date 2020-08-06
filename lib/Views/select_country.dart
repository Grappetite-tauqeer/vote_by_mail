import 'package:flutter/material.dart';
import 'package:vote_by_mail/Config/config.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'about_us.dart';
import 'detail_view.dart';
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
                      child: CustomSpacedRow(
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
                              showClearButton: true,
                              mode: Mode.BOTTOM_SHEET,
                              maxHeight: 500,
                              items: MutualActions.countiesList,
                              label: "Search your county",
                              onChanged: (valueSelected){

                                DetailView detailView = DetailView(countySelected: valueSelected,);

                                MutualActions.goToView(detailView, context);

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
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'County',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
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
