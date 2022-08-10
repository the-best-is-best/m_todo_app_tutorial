import 'package:intl/intl.dart';

extension ExtensionString on DateTime {
  String dateToString() {
    return DateFormat("yyyy-MM-dd").format(this);
  }
}
