import 'package:flutter/material.dart';
import 'package:playstore/screen/app_for/view/app_for.dart';
import 'package:playstore/screen/app_top/view/app_top.dart';
import 'package:playstore/screen/game_child/view/game_child.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff1F1F1F),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xff1F1F1F),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 248,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xff2A2D36),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 238,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.search,
                                color: Colors.white54,
                              ),
                              hintText: 'Search for apps...',
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.notifications_none, color: Colors.white54),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange, shape: BoxShape.circle),
                  alignment: Alignment.center,
                  child: Text("R"),
                ),
              ],
            ),
            bottom: TabBar(
              labelColor: Colors.lightBlue.shade400,
              indicatorColor: Colors.lightBlue.shade400,
              unselectedLabelColor: Colors.white70,
              tabs: [
                Tab(
                  text: 'For you',
                ),
                Tab(
                  text: 'Top chart',
                ),
                Tab(
                  text: 'Children',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            AppFor(),
            AppTop(),
            GameChild(),
          ]),
        ),
      ),
    );
  }
}
