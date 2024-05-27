// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Color BackgroundColor = const Color(0xffd70404);
Color TilteLogoColor = Colors.black;
Color TextRedColor = const Color(0xffd70404);
Color drawerColor = const Color(0xfff19c9c);
Color TextWhiteColor =const Color(0xfffcfbfb);
Color BackColor =const Color(0xffa60606);
Color WhiteColor = const Color(0xfffcfbfb);
Color ValidationColor = const Color(0xffffffff);
Color OkColor = const Color(0xff0b540f);
Color OkColor1 = const Color(0xff039403);
Color FaildColor = const Color(0xffe30a0a);
Color CloseButtonColor = Colors.black87;
Color TextValidationColor = Colors.black;
Color BorderValidationColor = Colors.black54;
Color InputColorBlanSale = const Color(0xffc9c8c8);
Color TilteMotPass = const Color(0xffffffff);
String fasogaz = "E-Gaz";
String title = "Ma boutique";

Size SpaceBetweenInputCreate_ShopAndIndicatorForInput = Size(3, 12);
Size TextFontSize = const Size(25, 35);
Size WidthSizeSmallIcon = const Size(0, 23);
Size WithSizeContenairIconInput = const Size(30, 30);
Size WithSizeContenaireTextFiedInput = const Size(300, 38);
Size SizeContenaireTextFiedInput = const Size(148, 30);
Size SizeTextFiedInputMotPass = const Size(330, 50);
const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
const fillColor = Color.fromRGBO(243, 246, 249, 0);
const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

// icon incription et login
Size SizeIconLogin = const Size(23, 0);
BorderRadius borderRadiusContenaireIcon =
    const BorderRadius.all(Radius.circular(8));
double PaddingIconPlace = 9.0;
double MarginIconPlace = 9.0;
Size PlaceIconTransformOffset = const Size(-1.5, -3);
// font size Creation boutique input
Size FontSize = Size(0, 15);
FontWeight fontBold= FontWeight.bold;
// Spacement
Padding PaddingSpace = const Padding(padding: EdgeInsets.only(top: 20));

// Bordeur radius

BorderRadius BorderRaduisInput = const BorderRadius.all(Radius.circular(8));
// poid du gaz
const  gazWeights = ["12.5 Kg","6 Kg"];


String error_number= "";
String error_text_name = "";
String error_shop_name = "";
String error_adress_mail = "";
String error_direction = "";
int poids = 0;
String type = "";










Widget buildTextFieldContainer(Color backgroundColor) {
  return SizedBox(
      width: 38,
      height: 40,
      child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            filled: true,
            border: InputBorder.none,
            fillColor: backgroundColor,
          )));
}
 const TextStyle optionStyle =
TextStyle(fontSize: 30, fontWeight: FontWeight.bold);