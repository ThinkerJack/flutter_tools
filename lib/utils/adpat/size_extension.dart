import 'adaptive_size_util.dart';

extension GetSize on num {

  double get px => SizeAdaptiveUtil().getPx(this);

  double get py => SizeAdaptiveUtil().getPy(this);

  double get sp => SizeAdaptiveUtil().fontSize(this);
}
