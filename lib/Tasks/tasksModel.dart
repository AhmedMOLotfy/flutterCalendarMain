// const String tableTasks = 'tasks';
//
// class TaskFields {
//   static final List<String> values = [
//     id,
//     task,
//     status,
//   ];
//
//   static const String id = '_id';
//   static const String task = 'task';
//   static const String status = 'number';
// }
//
// class Task {
//   final int? id;
//   final String task;
//   final int status;
//
//   const Task({this.id, required this.task, required this.status});
//
//   Task copy({int? id, String? task, int? status}) => Task(
//         id: id ?? this.id,
//         task: task ?? this.task,
//         status: status ?? this.status,
//       );
//
//   static Task fromJson(Map<String, Object?> json) => Task(
//         id: json[TaskFields.id] as int?,
//         task: json[TaskFields.task] as String,
//         status: json[TaskFields.status] as int,
//       );
//
//   Map<String, Object?> toJson() => {
//         TaskFields.id: id,
//         TaskFields.task: task,
//         TaskFields.status: status,
//       };
// }
