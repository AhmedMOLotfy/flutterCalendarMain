//
// import 'package:flutter/material.dart';
// import 'package:untitled/Screens/Tasks/taskFormWodget.dart';
// import 'package:untitled/Screens/Tasks/tasksModel.dart';
//
// class AddEditTaskPage extends StatefulWidget {
//   final Task? task;
//   final int? status;
//
//   const AddEditTaskPage({
//     Key? key,
//     this.task,
//     this.status
//   }) : super(key: key);
//   @override
//   _AddEditTaskPageState createState() => _AddEditTaskPageState();
// }
//
// class _AddEditTaskPageState extends State<AddEditTaskPage> {
//   final _formKey = GlobalKey<FormState>();
//   late String task;
//   late int status;
//
//   @override
//   void initState() {
//     super.initState();
//
//     status = widget.task?.status ?? 1;
//     task = widget.task?.task ?? '';
//   }
//
//   @override
//   Widget build(BuildContext context) => Scaffold(
//     appBar: AppBar(
//       actions: [
//         buildButton(),
//       ],
//     ),
//     body: Form(
//       key: _formKey,
//       child: TaskFormWidget(
//         onChangedStatus: ,
//         status:
//         task: ,
//
//
//       ),
//     ),
//   );
//
//   Widget buildButton() {
//     final isFormValid = task.isNotEmpty;
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           onPrimary: Colors.white,
//           primary: isFormValid ? null : Colors.grey.shade700,
//         ),
//         onPressed: addOrUpdateNote,
//         child: const Text('Save'),
//       ),
//     );
//   }
//
//   void addOrUpdateNote() async {
//     final isValid = _formKey.currentState!.validate();
//
//     if (isValid) {
//       final isUpdating = widget.task != null;
//
//       if (isUpdating) {
//         await updateNote();
//       } else {
//         await addNote();
//       }
//
//       Navigator.of(context).pop();
//     }
//   }
//
//   Future updateNote() async {
//     final note = widget.note!.copy(
//       isImportant: isImportant,
//       number: number,
//       title: title,
//       description: description,
//     );
//
//     await NotesDatabase.instance.update(note);
//   }
//
//   Future addNote() async {
//     final note = Note(
//       title: title,
//       isImportant: true,
//       number: number,
//       description: description,
//       createdTime: DateTime.now(),
//     );
//
//     await NotesDatabase.instance.create(note);
//   }
// }
