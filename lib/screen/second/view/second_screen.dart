import 'package:flutter/material.dart';
import 'package:playstore/screen/game_fory/provider/game_forypro.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  GameProvider? gameProviderf;
  GameProvider? gameProvidert;

  @override
  Widget build(BuildContext context) {
    gameProviderf = Provider.of<GameProvider>(context, listen: false);
    gameProviderf = Provider.of<GameProvider>(context, listen: true);
    int i = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1F1F1F),
        appBar: AppBar(
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 15,
            )
          ],
          elevation: 0,
          backgroundColor: Color(0xff1F1F1F),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                      height: 85,
                      width: 85,
                      alignment: Alignment.center,
                      child: Text("${gameProviderf!.data[i].logo}",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.black26,offset: Offset(3, 3),spreadRadius: 1,blurRadius: 1)]),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${gameProviderf!.data[i].name}",style: TextStyle(color: Colors.white,fontSize: 40),),
                        SizedBox(height: 8,),
                        Text("${gameProviderf!.data[i].cat}",style: TextStyle(color: Colors.white,fontSize: 18),)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      child: Column(
                        children: [
                          SizedBox(height: 7,),
                          Text("${gameProviderf!.data[i].dow}",style: TextStyle(color: Colors.white,fontSize: 18),),
                          SizedBox(height: 8,),
                          Text("Downloads",style: TextStyle(color: Colors.white70,fontSize: 19),)
                        ],
                      ),
                    ),
                    Container(height: 45,width: 1,color: Colors.grey.shade800,),
                    Container(
                      height: 50,
                      width: 100,
                      child: Column(
                        children: [
                          Icon(Icons.star,color: Colors.white,),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("${gameProviderf!.data[i].rate}",style: TextStyle(color: Colors.white,fontSize: 18),),
                              Icon(Icons.star,color: Colors.white,size: 15,),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(height: 45,width: 1,color: Colors.grey.shade800,),
                    Container(
                      height: 50,
                      width: 100,
                      child: Column(
                        children: [
                          Icon(Icons.download,color: Colors.white,),
                          SizedBox(height: 5,),
                          Text("${gameProviderf!.data[i].size}",style: TextStyle(color: Colors.white,fontSize: 18),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      launchUrl(Uri.parse('${gameProviderf!.data[i].link}'));
                    },
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.greenAccent.shade700,borderRadius: BorderRadius.circular(25)),
                      alignment: Alignment.center,
                      child: Text("Install",style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('${gameProviderf!.data[i].img1}',height: 300),
                      SizedBox(width: 15,),
                      Image.asset('${gameProviderf!.data[i].img2}',height: 300),
                      SizedBox(width: 15,),
                      Image.asset('${gameProviderf!.data[i].img3}',height: 300),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("About",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(right: 10,top: 10),
                  child: Container(
                    child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like",style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
