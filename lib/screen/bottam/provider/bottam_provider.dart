import 'package:flutter/material.dart';

class Bottam extends ChangeNotifier
{
  int i=0;

  void select(int value)
  {
    i=value;
    notifyListeners();
  }
}