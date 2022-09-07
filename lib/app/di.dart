import 'package:get_it/get_it.dart';
import 'package:m_todo_app_tutorial/services/sqflite_init.dart';

GetIt di = GetIt.instance;
Future<void> initModels() async {
  di.registerFactory(() => SqfliteInit());
  await di<SqfliteInit>().init();
  await di.unregister<SqfliteInit>();
}
