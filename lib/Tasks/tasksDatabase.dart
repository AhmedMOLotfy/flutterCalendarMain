// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'tasksModel.dart';
//
// class TasksDatabase {
//   static final TasksDatabase instance = TasksDatabase._init();
//
//   static Database? _database;
//
//   TasksDatabase._init();
//
//   Future<Database> get database async {
//     if (_database != null) return _database!;
//
//     _database = await _initDB('tasks.db');
//     return _database!;
//   }
//
//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, filePath);
//
//     return await openDatabase(path, version: 1, onCreate: _createDB);
//   }
//
//   Future _createDB(Database db, int version) async {
//     const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
//     const textType = 'TEXT NOT NULL';
//     const integerType = 'INTEGER NOT NULL';
//
//     await db.execute('''
// CREATE TABLE $tableTasks (
//   ${TaskFields.id} $idType,
//   ${TaskFields.task} $textType,
//   ${TaskFields.status} $integerType,
//   )
// ''');
//   }
//
//   Future<Task> create(Task task) async {
//     final db = await instance.database;
//
//     final id = await db.insert(tableTasks, task.toJson());
//     return task.copy(id: id);
//   }
//
//   Future<Task> readNote(int id) async {
//     final db = await instance.database;
//
//     final maps = await db.query(
//       tableTasks,
//       columns: TaskFields.values,
//       where: '${TaskFields.id} = ?',
//       whereArgs: [id],
//     );
//
//     if (maps.isNotEmpty) {
//       return Task.fromJson(maps.first);
//     } else {
//       throw Exception('ID $id not found');
//     }
//   }
//
//   Future<List<Task>> readAllTasks() async {
//     final db = await instance.database;
//
//     final result = await db.query(tableTasks);
//
//     return result.map((json) => Task.fromJson(json)).toList();
//   }
//
//   Future<int> update(Task note) async {
//     final db = await instance.database;
//
//     return db.update(
//       tableTasks,
//       note.toJson(),
//       where: '${TaskFields.id} = ?',
//       whereArgs: [note.id],
//     );
//   }
//
//   Future<int> delete(int id) async {
//     final db = await instance.database;
//
//     return await db.delete(
//       tableTasks,
//       where: '${TaskFields.id} = ?',
//       whereArgs: [id],
//     );
//   }
// }
