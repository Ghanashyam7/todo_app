import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/task.dart';

class DatabaseHelper {

  Future<Database> database() async {
    return openDatabase(join(await getDatabasesPath(), 'todo.db'),
        onCreate: (db, version) {
          // Run the CREATE TABLE statement on the database.
          return db.execute(
            "CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, description TEXT, deadline INTEGER )",
          );
        }
    );
  }
  Future<void> insertTask(Task task) async {
    Database _db = await database();
    await _db.insert('tasks', task.toMap());
  }
}