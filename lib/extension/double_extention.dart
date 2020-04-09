import 'package:favor/extension/adapte.dart';

extension DoubleFit on double {
  double get px {
    return JJAdapte.setPx(this);
  }

  double get rpx {
    return JJAdapte.setRpx(this);
  }
}