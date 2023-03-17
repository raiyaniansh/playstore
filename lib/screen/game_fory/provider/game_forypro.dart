import 'package:flutter/material.dart';
import 'package:playstore/screen/game_fory/modal/game_formodal.dart';

class GameProvider extends ChangeNotifier {
  List<mData> data = [
    mData(logo: 'Kbc', rate: '4.1', name: 'Kbc',cat: 'Game',dow: '2.5k',size: '65 MB',link: 'https://github.com/raiyaniansh/kbc' ,img1: 'assets/images/Screenshot_2023-01-13-11-18-01-206_com.example.kbc.jpg', img2: 'assets/images/Screenshot_2023-01-13-11-18-51-630-edit_com.example.kbc.jpg',img3: 'assets/images/Screenshot_2023-01-13-11-18-56-103_com.example.kbc.jpg'),
    mData(logo: 'TTT', rate: '4.0', name: 'Tic tac toe',cat: 'Game',dow: '3.1k',size: '60 MB',link: 'https://github.com/raiyaniansh/game' ,img1: 'assets/images/ttt1.jpg', img2: 'assets/images/ttt2.jpg',img3: 'assets/images/ttt3.jpg'),
  ];
}
