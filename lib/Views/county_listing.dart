import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:vote_by_mail/Config/config.dart';


class CountyListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: DropdownSearch<String>(

            showSelectedItem: true,
            showClearButton: true,
            mode: Mode.BOTTOM_SHEET,
            maxHeight: 500,
            items: ["Brazil", "Italia", "Tunisia", 'Canada'],
            label: "Search your county",
            onChanged: print,
            showSearchBox: true,
            /*
            dropDownButton: SizedBox(
              child: Container(
                color: Colors.green,
              ),
            ),
            * */
            /*dropdownSearchDecoration: InputDecoration(
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(0.0),
                ),
              ),
              fillColor: Colors.green,
              filled: true,
              focusColor: Colors.red
              //border: BorderRadius.all(0),

            ),
            */

            searchBoxDecoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
              labelText: "Search your county",
            ),
            popupTitle: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
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
                    color: Colors.white,
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
    );
  }
}

