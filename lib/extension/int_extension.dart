import 'package:favor/extension/adapte.dart';

extension IntFit on int {
  double get px {
    return JJAdapte.setPx(this.toDouble());
  }

  double get rpx {
    return JJAdapte.setRpx(this.toDouble());
  }
}