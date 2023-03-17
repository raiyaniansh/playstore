import 'package:flutter/cupertino.dart';
import 'package:playstore/screen/app_home/view/ihome.dart';
import 'package:playstore/screen/game_fory/view/igame.dart';
import 'package:playstore/screen/itoday/view/itoday.dart';

class Ibottam extends StatefulWidget {
  const Ibottam({Key? key}) : super(key: key);

  @override
  State<Ibottam> createState() => _IbottamState();
}

class _IbottamState extends State<Ibottam> {
  List screen = [IToday(),Igame(),Iapp()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.today),label: 'Today'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.rocket_fill),label: 'Games'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.app),label: 'Apps'),
          ],
        ), tabBuilder: (BuildContext context, int index) {
          return screen[index];
      },
      ),
    );
  }
}
