import 'package:flutter/cupertino.dart';
import 'package:playstore/screen/app_for/provider/app_pro.dart';
import 'package:provider/provider.dart';

class Iapp extends StatefulWidget {
  const Iapp({Key? key}) : super(key: key);

  @override
  State<Iapp> createState() => _IappState();
}

class _IappState extends State<Iapp> {
  AppProvider? appProviderf;
  AppProvider? appProvidert;
  @override
  Widget build(BuildContext context) {
    appProviderf = Provider.of<AppProvider>(context, listen: false);
    appProvidert = Provider.of<AppProvider>(context, listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Apps",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white,
                        fontSize: 50),
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: CupertinoColors.systemOrange,
                        shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: Text("R", style: TextStyle(color: CupertinoColors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text("Now with siri",style: TextStyle(color: CupertinoColors.activeBlue,fontSize: 20),),
              SizedBox(height: 10,),
              SizedBox(
                height: 245,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: appProviderf!.data.length,
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${appProviderf!.data[index].name}",style: TextStyle(color: CupertinoColors.white,fontSize: 20)),
                      SizedBox(height: 5,),
                      Container(
                        height: 220,
                        width: 300,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: CupertinoColors.secondaryLabel),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            appProviderf!.imgi1(index),
                            appProviderf!.imgi2(index),
                            appProviderf!.imgi3(index),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discover AR Gaming",style: TextStyle(color: CupertinoColors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                  Text("See All",style: TextStyle(color: CupertinoColors.activeBlue,fontSize: 23),),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Container(
                    height: 90,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                              color: CupertinoColors.activeBlue,
                              borderRadius: BorderRadius.circular(5)),
                          alignment: Alignment.center,
                          child: Text("${appProviderf!.data[index].logo}",style: TextStyle(color: CupertinoColors.white,fontSize: 22)),
                        ),
                        SizedBox(width: 20,),
                        Row(
                          children: [
                            Container(
                              height: 75,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${appProviderf!.data[index].name}",style: TextStyle(color: CupertinoColors.white,fontSize: 20),),
                                  SizedBox(height: 3,),
                                  Text("${appProviderf!.data[index].cat} | ${appProviderf!.data[index].size}",style: TextStyle(color: CupertinoColors.white.withOpacity(0.70)),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        Container(
                          height: 28,
                          width: 75,
                          decoration: BoxDecoration(
                              color: CupertinoColors.activeBlue.withOpacity(0.30),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          alignment: Alignment.center,
                          child: Text("Get",style: TextStyle(color: CupertinoColors.activeBlue)),
                        )
                      ],
                    ),
                  ),
                  itemCount: appProviderf!.data.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
