import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double safeWidth;
  static double safeHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    print(_mediaQueryData);
    screenWidth = _mediaQueryData.size.width;
    print(screenWidth);

    screenHeight = _mediaQueryData.size.height;
    print(screenHeight);
    double _safeAreaWidth =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    print(_safeAreaWidth);
    double _safeAreaHeight =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    print(_safeAreaHeight);
    safeWidth = (screenWidth - _safeAreaWidth);
    print(safeWidth);
    safeHeight = (screenHeight - _safeAreaHeight);
    print(safeHeight);
    blockSizeHorizontal = safeWidth / 100;
    blockSizeVertical = safeHeight / 100;
  }
}
