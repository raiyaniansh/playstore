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
              SizedBox(height: 5,),
              Image.asset('assets/images/t1.PNG'),
              SizedBox(height: 5,),
              Image.asset('assets/images/t2.PNG'),
            ],
          ),
        ),
      ),
    );
  }
}
