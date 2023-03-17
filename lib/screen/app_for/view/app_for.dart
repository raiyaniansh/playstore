import 'package:flutter/material.dart';
import 'package:playstore/screen/app_for/provider/app_pro.dart';
import 'package:provider/provider.dart';

class AppFor extends StatefulWidget {
  const AppFor({Key? key}) : super(key: key);

  @override
  State<AppFor> createState() => _AppForState();
}

class _AppForState extends State<AppFor> {
  AppProvider? appProviderf;
  AppProvider? appProvidert;
  @override
  Widget build(BuildContext context) {
    appProviderf = Provider.of<AppProvider>(context,listen: false);
    appProvidert = Provider.of<AppProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1F1F1F),
        body: Padding(
          padding: const EdgeInsets.only(top: 10,left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Recommended for you',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white70,
                  ),
                  SizedBox(width: 15,)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'secondapp',arguments: index);
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              boxShadow: [
                                BoxShadow(color: Colors.black26,blurRadius: 1,spreadRadius: 1,offset: Offset(2,2))
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text("${appProviderf!.data[index].logo}",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 10,),
                          Container(width: 65,child: Text("${appProviderf!.data[index].name}",style: TextStyle(color: Colors.white,fontSize: 18)),),
                          Container(width: 65,child: Text("${appProviderf!.data[index].size}",style: TextStyle(color: Colors.white70,fontSize: 12)),),
                        ],
                      ),
                    ),
                  ),
                  itemCount: appProviderf!.data.length,
                ),
              ),
              SizedBox(height: 20,),
              Text("Suggested for you",style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.bold)),
              SizedBox(height: 15,),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'secondapp',arguments: index);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 220,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade800),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                appProviderf!.imgi1(index),
                                appProviderf!.imgi2(index),
                                appProviderf!.imgi3(index),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: 280,
                            height: 50,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black26,blurRadius: 1,spreadRadius: 1,offset: Offset(2,2))
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text("${appProviderf!.data[index].logo}",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("${appProviderf!.data[index].name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Text("${appProviderf!.data[index].rate}",style: TextStyle(color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,size: 15,)
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
