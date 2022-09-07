import 'package:get_it/get_it.dart';
import 'package:m_todo_app_tutorial/services/sqflite_init.dart';

GetIt di = GetIt.instance;

Future initModels() async {
  di.registerFactory(() => SqFliteInit());
  await di<SqFliteInit>().init();
  await di.unregister<SqFliteInit>();
}
