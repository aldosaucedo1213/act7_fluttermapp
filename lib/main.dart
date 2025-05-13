import "package:flutter/material.dart";
import 'package:act7_fluttermapp/Inicio.dart';
import 'package:act7_fluttermapp/Animated.dart';
import 'package:act7_fluttermapp/BottomNavegation.dart';
import 'package:act7_fluttermapp/CloseBottom.dart';
import 'package:act7_fluttermapp/CupertinoPicker.dart';
import 'package:act7_fluttermapp/DatePicker.dart';
import 'package:act7_fluttermapp/Expand_Icon.dart';

void main() => runApp(MiFlutterApp());

class MiFlutterApp extends StatelessWidget {
  const MiFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "entre paginas routes",
      initialRoute: "/",
      routes: {
        "/": (context) => const Inicio(),
        "/Animated": (context) => const AnimatedPaddings(),
        "/BottomNavegation": (context) => const BottomNavigation(),
        "/CloseBottom": (context) => const CloseBottom(),
        "/CupertinoPicker": (context) => const Cupertino(),
        "/DatePicker": (context) => const Date(),
        "/ExpandIcons": (context) => const Expand(),
      },
    );
  }
}
