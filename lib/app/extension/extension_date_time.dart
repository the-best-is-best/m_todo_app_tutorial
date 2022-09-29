import 'package:m_todo_app_tutorial/app/constant/constant.dart';

extension ExtensionDateTime on DateTime {
  String dateToString() {
    return Constant.originalDateFormat.format(this);
  }

  bool isCurrentDate() {
    return Constant.originalDateFormat.parse(this.toString()) ==
        Constant.originalDateFormat.parse(DateTime.now().toString());
  }
}
