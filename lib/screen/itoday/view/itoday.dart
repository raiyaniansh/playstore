import 'package:flutter/cupertino.dart';
import 'package:playstore/screen/game_fory/provider/game_forypro.dart';
import 'package:provider/provider.dart';

class IToday extends StatefulWidget {
  const IToday({Key? key}) : super(key: key);

  @override
  State<IToday> createState() => _ITodayState();
}

class _ITodayState extends State<IToday> {
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
                height: 10,
              ),
              Text(
                "WEDNESDAY, MARCH 15",
                style:
                    TextStyle(color: CupertinoColors.white.withOpacity(0.80)),
              ),
              Row(
                children: [
                  Text(
                    "Today",
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
              Expanded(
                child: ListView.builder(
                  itemCount: gameProviderf!.data.length,
                  itemBuilder: (context, index) => Container(
                    height: 400,
                    width: 300,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CupertinoColors.secondaryLabel),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("${gameProviderf!.data[index].name}",style: TextStyle(color: CupertinoColors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                        ),
                        SizedBox(height: 10,),
                        Row(
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
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 10,top: 10,left: 10),
                          child: Container(
                            child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing ",style: TextStyle(color: CupertinoColors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
