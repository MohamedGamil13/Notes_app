import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_textfeild.dart';
import 'package:notes_app/widgets/custom_button.dart';

class AddNoteBottomAction extends StatelessWidget {
  const AddNoteBottomAction({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          CustomTextfeild(label: 'Title'),
          SizedBox(height: 20),
          CustomTextfeild(label: 'Content', maxlines: 4),
          SizedBox(height: 50),
          CustomButton(text: 'Add Note', onTap: () {}),
        ],
      ),
    );
  }
}
