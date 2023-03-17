import 'package:flutter/cupertino.dart';
import 'package:playstore/screen/game_fory/provider/game_forypro.dart';
import 'package:provider/provider.dart';

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
              SizedBox(height: 20,),
              Text("New Game",style: TextStyle(color: CupertinoColors.activeBlue,fontSize: 20),),
              SizedBox(height: 10,),
              SizedBox(
                height: 245,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: gameProviderf!.data.length,
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${gameProviderf!.data[index].name}",style: TextStyle(color: CupertinoColors.white,fontSize: 20)),
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
                            Image.asset('${gameProviderf!.data[index].img1}',
                                height: 200),
                            Image.asset('${gameProviderf!.data[index].img2}',
                                height: 200),
                            Image.asset('${gameProviderf!.data[index].img3}',
                                height: 200),
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
                            child: Text("${gameProviderf!.data[index].logo}",style: TextStyle(color: CupertinoColors.white,fontSize: 22)),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 75,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${gameProviderf!.data[index].name}",style: TextStyle(color: CupertinoColors.white,fontSize: 20),),
                                Row(
                                  children: [
                                    Text("${gameProviderf!.data[index].cat} | ${gameProviderf!.data[index].size}",style: TextStyle(color: CupertinoColors.white.withOpacity(0.70)),),
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
                        ],
                      ),
                    ),
                  itemCount: gameProviderf!.data.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
