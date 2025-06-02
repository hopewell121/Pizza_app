import 'package:flutter/material.dart';



class AppTextStyles {

  static const TextStyle text17 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Colors.black
  );

static const TextStyle text40 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w200,
    color: Colors.black
  );

  static const TextStyle text30 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: Color.fromARGB(255, 94, 93, 93)
  );



static const TextStyle text18 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.black
  );

  static const TextStyle text24 = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w600,
    color: Colors.black);

 static const TextStyle text50 = TextStyle(
    fontSize: 33,
    fontWeight: FontWeight.w600,
    color: Colors.black);

    static const TextStyle text20 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: Colors.black

    

    
  );

    


}

TextStyle text18(Color color, double fontSize, FontWeight fontWeight ){
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,

    color: color
  );
}