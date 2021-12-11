import 'dart:ui' as ui;

class SizeAdaptiveUtil {
  static SizeAdaptiveUtil? _instance;

  factory SizeAdaptiveUtil() => _getInstance();

  SizeAdaptiveUtil._();

  static late double _windowWidth;
  static late double _windowHeight;
  static late double _widthPercentage;
  static late double _heightPercentage;
  static double _scaling = 1.0;

  setScaling(double num) {
    _scaling = num;
  }

  static void init({double width = 750, double height = 1334}) {
    _windowWidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
    _windowHeight = ui.window.physicalSize.height / ui.window.devicePixelRatio;
    _widthPercentage = _windowWidth / width;
    _heightPercentage = _windowHeight / height;
  }

  static SizeAdaptiveUtil _getInstance() {
    if (_instance == null) {
      _instance = SizeAdaptiveUtil._();
      SizeAdaptiveUtil.init();
      return _instance!;
    }
    return _instance!;
  }

  double getPx(num designSize) => designSize * _widthPercentage;

  double getPy(num designSize) => designSize * _heightPercentage;

  double fontSize(num designFontSize) =>
      designFontSize * _widthPercentage * _scaling;
}
