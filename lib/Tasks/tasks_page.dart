// import 'package:flutter/material.dart';
// import 'package:untitled/Screens/Tasks/note_card_widget.dart';
// import 'package:untitled/Screens/Tasks/tasksDatabase.dart';
// import 'package:untitled/Screens/Tasks/tasksModel.dart';
//
// class NotesPage extends StatefulWidget {
//   const NotesPage({Key? key}) : super(key: key);
//
//   @override
//   _NotesPageState createState() => _NotesPageState();
// }
//
// class _NotesPageState extends State<NotesPage> {
//   late List<Task> tasks;
//   bool isLoading = false;
//
//   bool show = true;
//
//   @override
//   void initState() {
//     super.initState();
//
//     refreshNotes();
//   }
//
//   Future refreshNotes() async {
//     setState(() => isLoading = true);
//
//     tasks = await TasksDatabase.instance.readAllTasks();
//
//     setState(() => isLoading = false);
//   }
//
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: Center(
//           child: isLoading
//               ? const CircularProgressIndicator()
//               : tasks.isEmpty
//                   ? const Text(
//                       'No Tasks',
//                       style: TextStyle(color: Colors.white, fontSize: 24),
//                     )
//                   : buildNotes(),
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.black,
//           child: const Icon(Icons.add),
//           onPressed: () async {
//             await Navigator.of(context).push(
//               MaterialPageRoute(builder: (context) => const AddEditNotePage()),
//             );
//
//             refreshNotes();
//           },
//         ),
//       );
//
//   Widget buildNotes() => ListView.builder(
//         padding: const EdgeInsets.all(8),
//         itemCount: tasks.length,
//         itemBuilder: (context, index) {
//           final task = tasks[index];
//
//           return Row(
//             children: [
//               Expanded(
//                 child: TaskCardWidget(
//                   task: task,
//                   index: index,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () async {
//                   await TasksDatabase.instance.delete(task.id as int);
//                   setState(() {
//                     refreshNotes();
//                   });
//                 },
//                 child: const Icon(
//                   Icons.delete,
//                 ),
//               ),
//             ],
//           );
//         },
//       );
// }
