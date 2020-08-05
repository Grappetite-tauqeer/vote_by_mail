import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:beauty_textfield/beauty_textfield.dart';


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



TextStyle normalTextStyle = TextStyle( fontFamily: 'Raleway',
  fontSize: 16,
);

TextStyle mediumTextStyle = TextStyle( fontFamily: 'Raleway',
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.black ,
);

TextStyle mediumButtonTextStyle = TextStyle( fontFamily: 'Raleway',
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.white ,
);




TextStyle loaderTitle =  TextStyle( fontFamily: 'Raleway',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black ,
    decoration: TextDecoration.none
);


TextStyle boldTextStyle = TextStyle( fontFamily: 'Raleway',
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

TextStyle appBarStyle = TextStyle(
  fontFamily: 'Raleway',
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);



const spinner = SpinKitRotatingCircle(
  color: Colors.red,
  size: 50.0,
);


TyperAnimatedTextKit typeWriter = TyperAnimatedTextKit(
  text: [
    "Civil Academy",
  ],
  textStyle: loaderTitle,
  textAlign: TextAlign.start,
  alignment: AlignmentDirectional.topStart,
  isRepeatingAnimation: false,
  speed: Duration(
      milliseconds: 150
  ),// or Alignment.topLeft
);


class MutualActions {


  static Color mainOrangeColor = Color.fromRGBO(234, 122, 48, 1.0);
  static Color mainBlueColor = Color.fromRGBO(44, 48, 148, 1.0);
  static Color lightOrangeColor = Color.fromRGBO(244, 192, 153, 1.0);
  //44 48 148

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
  ['Alachua ','Baker ','Bay ','Bradford ','Brevard ','Broward ','Calhoun ','Charlotte ','Citrus ','Clay ','Collier ','Columbia ','Dade ','Desoto ','Dixie ','Duval ','Escambia ','Flagler ','Franklin ','Gadsden ','Gilchrist ','Glades ','Gulf ','Hamilton ','Hardee ','Hendry ','Hernando ','Highlands ','Hillsborough ','Holmes ','Indian River ','Jackson ','Jefferson ','Lafayette ','Lake ','Lee ','Leon ','Levy ','Liberty ','Madison ','Manatee ','Marion ','Martin ','Miami-Dade ','Monroe ','Multiple Counties ','Nassau ',
    'Okaloosa ','Okeechobee ','Orange ','Osceola ','Palm Beach ','Pasco ', 'Pinellas','Polk ','Putnam ','Santa Rosa ','Sarasota ','Seminole ','St. Johns ','St. Lucie ','Sumter ','Suwannee ','Taylor ','Union ','Volusia ','Wakulla ','Walton ','Washington'];
  
  static List<String> countriesList = ['Afghanistan',
    'Albania',
    'Algeria',
    'American Samoa',
    'Andorra',
    'Angola',
    'Anguilla',
    'Antarctica',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Aruba',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bermuda',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'British Indian Ocean Territory',
    'British Virgin Islands',
    'Brunei',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Cape Verde',
    'Cayman Islands',
    'Central African Republic',
    'Chad',
    'Chile',
    'China',
    'Christmas Island',
    'Cocos Islands',
    'Colombia',
    'Comoros',
    'Cook Islands',
    'Costa Rica',
    'Croatia',
    'Cuba',
    'Cyprus',
    'Czech Republic',
    'Democratic Republic of the Congo',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'East Timor',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea',
    'Estonia',
    'Ethiopia',
    'Falkland Islands',
    'Faroe Islands',
    'Fiji',
    'Finland',
    'France',
    'French Polynesia',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Gibraltar',
    'Greece',
    'Greenland',
    'Grenada',
    'Guam',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Honduras',
    'Hong Kong',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Isle of Man',
    'Israel',
    'Italy',
    'Ivory Coast',
    'Jamaica',
    'Japan',
    'Jersey',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Kuwait',
    'Kyrgyzstan',
    'Laos',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Macao',
    'Macedonia',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands',
    'Mauritania',
    'Mauritius',
    'Mayotte',
    'Mexico',
    'Micronesia',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Montserrat',
    'Morocco',
    'Mozambique',
    'Myanmar',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'Netherlands Antilles',
    'New Caledonia',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'Niue',
    'North Korea',
    'Northern Mariana Islands',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Pitcairn',
    'Poland',
    'Portugal',
    'Puerto Rico',
    'Qatar',
    'Republic of the Congo',
    'Romania',
    'Russia',
    'Rwanda',
    'Saint Barthelemy',
    'Saint Helena',
    'Saint Kitts and Nevis',
    'Saint Lucia',
    'Saint Martin',
    'Saint Pierre and Miquelon',
    'Saint Vincent and the Grenadines',
    'Samoa',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Senegal',
    'Serbia',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa',
    'South Georgia and the South Sandwich Islands',
    'South Korea',
    'Spain',
    'Sri Lanka',
    'Sudan',
    'Suriname',
    'Svalbard and Jan Mayen',
    'Swaziland',
    'Sweden',
    'Switzerland',
    'Syria',
    'Taiwan',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Togo',
    'Tokelau',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Turks and Caicos Islands',
    'Tuvalu',
    'U.S. Virgin Islands',
    'Uganda',
    'Ukraine',
    'United Arab Emirates',
    'United Kingdom',
    'United States',
    'Uruguay',
    'Uzbekistan',
    'Vanuatu',
    'Vatican',
    'Venezuela',
    'Vietnam',
    'Wallis and Futuna',
    'Western Sahara',
    'Yemen',
    'Zambia',
    'Zimbabwe'];


  static List<String> nationalitiesList =    ['Afghan',
    'Albanian',
    'Algerian',
    'American',
    'Andorran',
    'Angolan',
    'Anguillan',
    'Citizen of Antigua and Barbuda',
    'Argentine',
    'Armenian',
    'Australian',
    'Austrian',
    'Azerbaijani',
    'Bahamian',
    'Bahraini',
    'Bangladeshi',
    'Barbadian',
    'Belarusian',
    'Belgian',
    'Belizean',
    'Beninese',
    'Bermudian',
    'Bhutanese',
    'Bolivian',
    'Citizen of Bosnia and Herzegovina',
    'Botswanan',
    'Brazilian',
    'British',
    'British Virgin Islander',
    'Bruneian',
    'Bulgarian',
    'Burkinan',
    'Burmese',
    'Burundian',
    'Cambodian',
    'Cameroonian',
    'Canadian',
    'Cape Verdean',
    'Cayman Islander',
    'Central African',
    'Chadian',
    'Chilean',
    'Chinese',
    'Colombian',
    'Comoran',
    'Congolese (Congo)',
    'Congolese (DRC)',
    'Cook Islander',
    'Costa Rican',
    'Croatian',
    'Cuban',
    'Cymraes',
    'Cymro',
    'Cypriot',
    'Czech',
    'Danish',
    'Djiboutian',
    'Dominican',
    'Citizen of the Dominican Republic',
    'Dutch',
    'East Timorese',
    'Ecuadorean',
    'Egyptian',
    'Emirati',
    'English',
    'Equatorial',
    'Guinean',
    'Eritrean',
    'Estonian',
    'Ethiopian',
    'Faroese',
    'Fijian',
    'Filipino',
    'Finnish',
    'French',
    'Gabonese',
    'Gambian',
    'Georgian',
    'German',
    'Ghanaian',
    'Gibraltarian',
    'Greek',
    'Greenlandic',
    'Grenadian',
    'Guamanian',
    'Guatemalan',
    'Citizen of Guinea-Bissau',
    'Guinean',
    'Guyanese',
    'Haitian',
    'Honduran',
    'Hong Konger',
    'Hungarian',
    'Icelandic',
    'Indian',
    'Indonesian',
    'Iranian',
    'Iraqi',
    'Irish',
    'Israeli',
    'Italian',
    'Ivorian',
    'Jamaican',
    'Japanese',
    'Jordanian',
    'Kazakh',
    'Kenyan',
    'Kittitian',
    'Citizen of Kiribati',
    'Kosovan',
    'Kuwaiti',
    'Kyrgyz',
    'Lao',
    'Latvian',
    'Lebanese',
    'Liberian',
    'Libyan',
    'Liechtenstein citizen',
    'Lithuanian',
    'Luxembourger',
    'Macanese',
    'Macedonian',
    'Malagasy',
    'Malawian',
    'Malaysian',
    'Maldivian',
    'Malian',
    'Maltese',
    'Marshallese',
    'Martiniquais',
    'Mauritanian',
    'Mauritian',
    'Mexican',
    'Micronesian',
    'Moldovan',
    'Monegasque',
    'Mongolian',
    'Montenegrin',
    'Montserratian',
    'Moroccan',
    'Mosotho',
    'Mozambican',
    'Namibian',
    'Nauruan',
    'Nepalese',
    'New Zealander',
    'Nicaraguan',
    'Nigerian',
    'Nigerien',
    'Niuean',
    'North Korean',
    'Northern Irish',
    'Norwegian',
    'Omani',
    'Pakistani',
    'Palauan',
    'Palestinian',
    'Panamanian',
    'Papua New Guinean',
    'Paraguayan',
    'Peruvian',
    'Pitcairn Islander',
    'Polish',
    'Portuguese',
    'Prydeinig',
    'Puerto Rican',
    'Qatari',
    'Romanian',
    'Russian',
    'Rwandan',
    'Salvadorean',
    'Sammarinese',
    'Samoan',
    'Sao Tomean',
    'Saudi Arabian',
    'Scottish',
    'Senegalese',
    'Serbian',
    'Citizen of Seychelles',
    'Sierra Leonean',
    'Singaporean',
    'Slovak',
    'Slovenian',
    'Solomon Islander',
    'Somali',
    'South African',
    'South Korean',
    'South',
    'Sudanese',
    'Spanish',
    'Sri Lankan',
    'St Helenian',
    'St Lucian',
    'Stateless',
    'Sudanese',
    'Surinamese',
    'Swazi',
    'Swedish',
    'Swiss',
    'Syrian',
    'Taiwanese',
    'Tajik',
    'Tanzanian',
    'Thai',
    'Togolese',
    'Tongan',
    'Trinidadian',
    'Tristanian',
    'Tunisian',
    'Turkish',
    'Turkmen',
    'Turks and Caicos Islander',
    'Tuvaluan',
    'Ugandan',
    'Ukrainian',
    'Uruguayan',
    'Uzbek',
    'Vatican citizen',
    'Citizen of Vanuatu',
    'Venezuelan',
    'Vietnamese',
    'Vincentian',
    'Wallisian',
    'Welsh',
    'Yemeni',
    'Zambian',
    'Zimbabwean'];



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


class MyTextField extends StatefulWidget {

  MyTextField({this.placeHolderName,this.mainIcon,this.textInputType,this.textChangedFunction,this.isFocused});

  final String placeHolderName;
  final IconData mainIcon;
  final Function textChangedFunction;
  final TextInputType textInputType;
  final bool isFocused;

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {



  @override
  Widget build(BuildContext context) {
    return SpacedRow(
      currentWidget: BeautyTextfield(
        autofocus: true,
        accentColor: Colors.grey,
        backgroundColor: Colors.white,
        width: double.maxFinite,

        height: 60,
        duration: Duration(milliseconds: 300),
        inputType: this.widget.textInputType,
        prefixIcon: Icon(
          this.widget.mainIcon,
          color: Colors.blueAccent,
        ),
        placeholder: this.widget.placeHolderName,
        onTap: () {
          print('Click');
          FocusScope.of(context).requestFocus(new FocusNode());


        },
        onChanged: this.widget.textChangedFunction,
        onSubmitted: (data) {
          print(data.length);
        },
      ) ,

    );
  }
}




