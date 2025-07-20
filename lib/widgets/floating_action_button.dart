import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_action.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const AddNoteBottomAction();
          },
        );
      },

      backgroundColor: Colors.black,
      focusColor: Colors.white,
      hoverColor: Colors.blue,
      child: Icon(Icons.add),
    );
  }
}
