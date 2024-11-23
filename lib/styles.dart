import 'dart:ui';
import 'package:flutter/material.dart';

final textStyle20 = TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20);
final textStyle16 = TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16);
final textStyle15 = TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15);
final textStyle12 = TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);
final textStyleLineThrough12 = TextStyle(
    color: Colors.white.withOpacity(0.46), fontWeight: FontWeight.w500, fontSize: 12,
    decoration: TextDecoration.lineThrough, decorationColor: Colors.white.withOpacity(0.46)
);
final bottomButtonTextStyle = TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 12, fontWeight: FontWeight.w500);

final purpleGradient = LinearGradient( colors: [ Color.fromRGBO(107, 102, 216, 1), Color.fromRGBO(186, 186, 215, 1),], );
final borderGradient = LinearGradient( colors: [ Color.fromRGBO(225, 225, 225, 0), Color.fromRGBO(225, 225, 225, 1),], );

final colorBlackTransporent = Color.fromRGBO(0, 0, 0, 0.37);
final colorWhiteTransporent = Color.fromRGBO(255, 255, 255, 0.1);
final colorViolet = Color.fromRGBO(107, 102, 216, 1);
final colorTextShadow = Color.fromRGBO(225, 225, 225, 0.4);