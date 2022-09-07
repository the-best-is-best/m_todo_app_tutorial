import 'package:m_todo_app_tutorial/app/di.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';

class SqFliteInit {
  Future init() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = p.join(databasesPath, 'task.db');

// open the database
    Database db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          """CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT , description TEXT , date TEXT , 
             startTime TEXT , endTime TEXT , remind INTEGER  , completed INTEGER ,fav INTEGER , color TEXT )""");
    });
    di.registerFactory(() => db);
  }
}
