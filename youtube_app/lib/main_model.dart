import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String kboyText = 'ボディー';

  void changeKboyText() {
    kboyText = 'ボディー改';
    notifyListeners();
  }
}