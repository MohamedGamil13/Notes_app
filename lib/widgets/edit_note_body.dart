import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_textfeild.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_button.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomAppbar(title: 'Edit Note', Kicon: Icons.done),
          SizedBox(height: 40),
          CustomTextfeild(label: 'Title'),
          SizedBox(height: 20),
          CustomTextfeild(label: 'Content', maxlines: 4),
          SizedBox(height: 40),
          CustomButton(text: 'Edit Note', onTap: () {}),
        ],
      ),
    );
  }
}
