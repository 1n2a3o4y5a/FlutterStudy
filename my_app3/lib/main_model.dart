import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String kboyText = 'ヤッホヤッホ';

  void changeKboyText () {
    kboyText = 'わっしょい!!';
    notifyListeners();
  }
}