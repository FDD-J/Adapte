import 'dart:ui';

class JJAdapte {
  static double physicalWidth;
  static double physicalHeight;
  static double screenWidth;
  static double screenHeight;
  static double dpr;
  static double statusHeight;

  static double rpx;
  static double px;

  static void initialize({double standardSize = 750}) {
    //1.手机的物理分辨率
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;

    //2.获取dpr
    dpr = window.devicePixelRatio;

    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight / dpr;

    statusHeight = window.padding.top / dpr;

    rpx = screenWidth / standardSize;
    px = screenWidth / standardSize * 2;

  }

  static double setRpx(double size) {
    return rpx * size;
  }

  static double setPx(double size) {
    return rpx * size;
  }
}