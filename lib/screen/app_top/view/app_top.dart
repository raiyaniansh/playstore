import 'package:flutter/material.dart';
import 'package:playstore/screen/app_for/provider/app_pro.dart';
import 'package:provider/provider.dart';

class AppTop extends StatefulWidget {
  const AppTop({Key? key}) : super(key: key);

  @override
  State<AppTop> createState() => _AppTopState();
}

class _AppTopState extends State<AppTop> {
  AppProvider? appProviderf;
  AppProvider? appProvidert;

  @override
  Widget build(BuildContext context) {
    appProviderf = Provider.of<AppProvider>(context, listen: false);
    appProvidert = Provider.of<AppProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1F1F1F),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'secondapp',arguments: index);
              },
              child: Container(
                height: 55,
                child: Row(
                  children: [
                    Text("${index + 1}", style: TextStyle(color: Colors.white70)),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      alignment: Alignment.center,
                      child: Text("${appProviderf!.data[index].logo}",style: TextStyle(color: Colors.white,fontSize: 22)),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${appProviderf!.data[index].name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text("${appProviderf!.data[index].cat} | ${appProviderf!.data[index].rate}",style: TextStyle(color: Colors.white70),),
                            Icon(Icons.star,color: Colors.white70,size: 12,),
                            Text(" | ${appProviderf!.data[index].size}",style: TextStyle(color: Colors.white70),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            itemCount: appProviderf!.data.length,
          ),
        ),
      ),
    );
  }
}
