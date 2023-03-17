import 'package:flutter/material.dart';
import 'package:playstore/screen/app_home/view/app_home.dart';
import 'package:playstore/screen/bottam/provider/bottam_provider.dart';
import 'package:playstore/screen/home/view/home_screen.dart';
import 'package:provider/provider.dart';

class BottamNavigatior extends StatefulWidget {
  const BottamNavigatior({Key? key}) : super(key: key);

  @override
  State<BottamNavigatior> createState() => _BottamNavigatiorState();
}

class _BottamNavigatiorState extends State<BottamNavigatior> {
  List screen = [HomeScreen(), AppHome()];
  Bottam? bottamf;
  Bottam? bottamt;

  @override
  Widget build(BuildContext context) {
    bottamf = Provider.of<Bottam>(context, listen: false);
    bottamt = Provider.of<Bottam>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: screen[bottamt!.i],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottamt!.i,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
          backgroundColor: Color(0xff2A2D36),
          onTap: (value) {
            bottamf!.select(value);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.gamepad),label: 'Game'),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded),label: 'Apps'),
          ],
        ),
      ),
    );
  }
}
