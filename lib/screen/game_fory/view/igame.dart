import 'package:flutter/cupertino.dart';
import 'package:playstore/screen/game_fory/provider/game_forypro.dart';
import 'package:playstore/utiles/LIST.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Igame extends StatefulWidget {
  const Igame({Key? key}) : super(key: key);

  @override
  State<Igame> createState() => _IgameState();
}

class _IgameState extends State<Igame> {
  GameProvider? gameProviderf;
  GameProvider? gameProvidert;
  @override
  Widget build(BuildContext context) {
    gameProviderf = Provider.of<GameProvider>(context, listen: false);
    gameProvidert = Provider.of<GameProvider>(context, listen: true);
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
                    "Games",
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
              Text('New Game',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 5,
              ),
              Text('Warhammer Aos : Realm War',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Compete in thrilling batties',style: TextStyle(color: Colors.grey,fontSize: 25),),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/a1.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Discover AR Gaming',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                  Text('See All',style: TextStyle(fontSize: 25,color: Colors.blue),),
                ],
              ),
              Expanded(child: ListView.builder(itemCount: game.length,itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(height: 75,width: 75,child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset('${game[index]}',fit: BoxFit.cover,))),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('${gamen[index]}',style: TextStyle(fontSize: 20,color: Colors.white),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Container(decoration: BoxDecoration(color: Colors.blue.withOpacity(0.30),borderRadius: BorderRadius.circular(25)),padding: EdgeInsets.only(top: 8,bottom: 8,left: 20,right: 20),child: Text('GET',style: TextStyle(color: Colors.blue)),),
                          SizedBox(width: 8,),
                          Text('In-App\nPurchases',style: TextStyle(color: Colors.white70,fontSize: 12),)
                        ],
                      )
                    ]),
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
