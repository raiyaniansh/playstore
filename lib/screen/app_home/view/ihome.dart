import 'package:flutter/cupertino.dart';
import 'package:playstore/screen/app_for/provider/app_pro.dart';
import 'package:playstore/utiles/LIST.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

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
              SizedBox(
                height: 5,
              ),
              Container(
                height: 1.5,
                color: CupertinoColors.systemGrey3,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'NOW WITH SIRI',
                style:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Triplt:Travel Planner',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              Text(
                'Quickly get flight info with Siri',
                style: TextStyle(color: Colors.grey, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/a2.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('12 Great Apps for IOS 12',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                  Text('See All',style: TextStyle(fontSize: 25,color: Colors.blue),),
                ],
              ),
              Expanded(child: ListView.builder(itemCount: total.length,itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(height: 75,width: 75,child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset('${total[index]}',fit: BoxFit.cover,))),
                    SizedBox(width: 10,),
                    Container(
                      width: 235,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${totaln[index]}',style: TextStyle(fontSize: 20,color: Colors.white),),
                                SizedBox(height: 3,),
                                Text('${totaln2[index]}',style: TextStyle(color: Colors.white70,fontSize: 12),)
                              ]),
                          Container(decoration: BoxDecoration(color: Colors.blue.withOpacity(0.30),borderRadius: BorderRadius.circular(25)),padding: EdgeInsets.only(top: 8,bottom: 8,left: 20,right: 20),child: Text('OPEN',style: TextStyle(color: Colors.blue)),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),))
            ],
          ),
        ),
      ),
    );
  }
}
