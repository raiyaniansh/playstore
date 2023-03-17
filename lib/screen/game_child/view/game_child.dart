import 'package:flutter/material.dart';
import 'package:playstore/screen/game_fory/provider/game_forypro.dart';
import 'package:provider/provider.dart';

class GameChild extends StatefulWidget {
  const GameChild({Key? key}) : super(key: key);

  @override
  State<GameChild> createState() => _GameChildState();
}

class _GameChildState extends State<GameChild> {
  GameProvider? gameProviderf;
  GameProvider? gameProvidert;

  @override
  Widget build(BuildContext context) {
    gameProviderf = Provider.of<GameProvider>(context, listen: false);
    gameProviderf = Provider.of<GameProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1F1F1F),
        body: Padding(
          padding: const EdgeInsets.only(top: 10,left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Recommended for you",style: TextStyle(color: Colors.white70,fontSize: 20)),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'second',arguments: index);
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
                            child: Text("${gameProviderf!.data[index].logo}",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 10,),
                          Container(width: 65,child: Text("${gameProviderf!.data[index].name}",style: TextStyle(color: Colors.white,fontSize: 18)),),
                          Container(width: 65,child: Text("${gameProviderf!.data[index].size}",style: TextStyle(color: Colors.white70,fontSize: 12)),),
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
