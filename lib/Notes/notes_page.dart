import 'package:flutter/material.dart';

import 'add_edit_note_page.dart';
import 'note_card_widget.dart';
import 'notes_database.dart';
import 'notes_model.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  List<Note> notes;
  bool isLoading = false;

  bool show = true;

  @override
  void initState() {
    print("dkbjvn");
    super.initState();

    refreshNotes();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    notes = await NotesDatabase.instance.readAllNotes();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : notes.isEmpty
                  ? const Text(
                      'No Notes',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )
                  : buildNotes(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(Icons.add),
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddEditNotePage()),
            );

            refreshNotes();
          },
        ),
      );

  Widget buildNotes() => ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: notes.length,
        itemBuilder: (context, index) {
          final note = notes[index];

          return Row(
            children: [
              Expanded(
                child: NoteCardWidget(
                  note: note,
                  index: index,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await NotesDatabase.instance.delete(note.id);
                  setState(() {
                    refreshNotes();
                  });
                },
                child: const Icon(
                  Icons.delete,
                ),
              ),
            ],
          );
        },
      );
}
