import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_body.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: EditNoteBody());
  }
}
