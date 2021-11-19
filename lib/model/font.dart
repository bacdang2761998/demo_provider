import 'package:flutter/foundation.dart';

class Font extends ChangeNotifier {
  double _fontSize = 0.5;

  set fontSize(newValue) {
    _fontSize = newValue;

    notifyListeners();
  }

  double get fontSize => _fontSize * 72;
  double get sliderFontSize => _fontSize;
}
