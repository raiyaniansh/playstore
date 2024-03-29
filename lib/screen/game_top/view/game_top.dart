import 'package:flutter/material.dart';
import 'package:playstore/screen/game_fory/provider/game_forypro.dart';
import 'package:playstore/utiles/LIST.dart';
import 'package:provider/provider.dart';

class GameTop extends StatefulWidget {
  const GameTop({Key? key}) : super(key: key);

  @override
  State<GameTop> createState() => _GameTopState();
}

class _GameTopState extends State<GameTop> {
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
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) => Container(
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
                    child: ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.asset("${game[index]}",fit: BoxFit.cover,)),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${gamen[index]}",style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("game | ${gamer[index]}",style: TextStyle(color: Colors.white70),),
                          Icon(Icons.star,color: Colors.white70,size: 12,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            itemCount: game.length,
          ),
        ),
      ),
    );
  }
}
