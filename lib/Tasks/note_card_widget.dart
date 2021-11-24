// import 'package:flutter/material.dart';
// import 'package:untitled/Screens/Tasks/tasksModel.dart';
//
// class TaskCardWidget extends StatefulWidget {
//   const TaskCardWidget({
//     Key? key,
//     required this.task,
//     required this.index,
//   }) : super(key: key);
//
//   final Task task;
//   final int index;
//
//   @override
//   State<TaskCardWidget> createState() => _TaskCardWidgetState();
// }
//
// class _TaskCardWidgetState extends State<TaskCardWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         constraints: const BoxConstraints(minHeight: 100),
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               widget.task.task,
//               style: const TextStyle(
//                 color: Colors.black,
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
