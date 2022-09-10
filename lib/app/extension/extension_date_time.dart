import 'package:intl/intl.dart';

extension ExtensionDateTime on DateTime {
  String dateToString() {
    return DateFormat("yyyy-MM-dd").format(this);
  }
}
