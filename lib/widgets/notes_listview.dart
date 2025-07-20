import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_card.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: NoteCard(title: 'Mohamed Gamil', text: 'body will be here '),
          );
        },
        itemCount: 100,
      ),
    );
  }
}
