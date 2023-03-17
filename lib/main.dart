import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore/screen/app_for/provider/app_pro.dart';
import 'package:playstore/screen/app_home/view/ihome.dart';
import 'package:playstore/screen/bottam/provider/bottam_provider.dart';
import 'package:playstore/screen/bottam/view/bottamnavigation.dart';
import 'package:playstore/screen/bottam/view/ibottam.dart';
import 'package:playstore/screen/game_fory/provider/game_forypro.dart';
import 'package:playstore/screen/game_fory/view/igame.dart';
import 'package:playstore/screen/itoday/view/itoday.dart';
import 'package:playstore/screen/second/view/second_screen.dart';
import 'package:playstore/screen/secondapp/view/dataapp.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GameProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Bottam(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProvider(),
        ),
      ],
      child: Platform.isAndroid ? ios() : android(),
    ),
  );
}

Widget android() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => BottamNavigatior(),
      'second': (context) => SecondScreen(),
      'secondapp': (context) => SecondappScreen(),
    },
  );
}

Widget ios() {
  return CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Ibottam(),
        'second': (context) => SecondScreen(),
        'secondapp': (context) => SecondappScreen(),
      },
  );
}
