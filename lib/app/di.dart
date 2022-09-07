import 'package:get_it/get_it.dart';
import 'package:m_todo_app_tutorial/services/sqlflite_init.dart';

GetIt di = GetIt.instance;

Future initModels() async {
  di.registerFactory(() => SqlFliteInit());
  await di<SqlFliteInit>().init();
  await di.unregister<SqlFliteInit>();
}
