import 'package:flutter/material.dart';
import 'package:playstore/screen/game_fory/provider/game_forypro.dart';
import 'package:provider/provider.dart';

class GameForyou extends StatefulWidget {
  const GameForyou({Key? key}) : super(key: key);

  @override
  State<GameForyou> createState() => _GameForyouState();
}

class _GameForyouState extends State<GameForyou> {
  GameProvider? gameProviderf;
  GameProvider? gameProvidert;

  @override
  Widget build(BuildContext context) {
    gameProviderf = Provider.of<GameProvider>(context, listen: false);
    gameProvidert = Provider.of<GameProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1F1F1F),
        body: Padding(
          padding: const EdgeInsets.only(top: 10,left: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Game we are playing',
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
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'second',arguments: index);
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('${gameProviderf!.data[index].img1}',
                                    height: 200),
                                Image.asset('${gameProviderf!.data[index].img2}',
                                    height: 200),
                                Image.asset('${gameProviderf!.data[index].img3}',
                                    height: 200),
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
                                  child: Text("${gameProviderf!.data[index].logo}",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("${gameProviderf!.data[index].name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Text("${gameProviderf!.data[index].rate}",style: TextStyle(color: Colors.white),),
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
                  itemCount: gameProviderf!.data.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
