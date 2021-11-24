// import 'package:flutter/material.dart';
//
// class TaskFormWidget extends StatelessWidget {
//   final int? status;
//   final String? task;
//   final ValueChanged<int> onChangedStatus;
//   final ValueChanged<String> onChangedTitle;
//
//   const TaskFormWidget({
//     Key? key,
//     this.status = 0,
//     this.task = '',
//     required this.onChangedStatus,
//     required this.onChangedTitle,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) => SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               buildTitle(),
//               const SizedBox(height: 8),
//               const SizedBox(height: 16),
//             ],
//           ),
//         ),
//       );
//
//   Widget buildTitle() => TextFormField(
//         maxLines: 1,
//         initialValue: task,
//         style: const TextStyle(
//           color: Colors.black,
//           fontWeight: FontWeight.bold,
//           fontSize: 24,
//         ),
//         decoration: const InputDecoration(
//           border: InputBorder.none,
//           hintText: 'Title',
//           hintStyle: TextStyle(color: Colors.black26),
//         ),
//         validator: (title) =>
//             title != null && title.isEmpty ? 'The title cannot be empty' : null,
//         onChanged: onChangedTitle,
//       );
// }
