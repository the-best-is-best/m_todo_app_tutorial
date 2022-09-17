import '../constant/constant.dart';

extension ExtensionDateTime on DateTime {
  String dateToString() {
    return Constant.originalDateFormat.format(this);
  }
}
