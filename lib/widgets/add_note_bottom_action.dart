import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/Custom_textfeild.dart';
import 'package:notes_app/widgets/custom_button.dart';

class AddNoteBottomAction extends StatelessWidget {
  const AddNoteBottomAction({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: AddNoteForm());
  }
}

class AddNoteForm extends StatefulWidget {
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> globalKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNotefailure) {
          print('=================state falire message =${state.errormessage}');
        } else if (state is AddNoteSucess) {
          Navigator.of(context, rootNavigator: true).pop();
        }
      },
      builder: (context, state) {
        return Form(
          key: globalKey,

          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomTextfeild(
                label: 'Title',
                onSaved: (value) {
                  title = value;
                },
              ),
              SizedBox(height: 20),
              CustomTextfeild(
                label: 'Content',
                maxlines: 4,
                onSaved: (value) {
                  subtitle = value;
                },
              ),
              SizedBox(height: 50),
              CustomButton(
                text: 'Add Note',
                onTap: () {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();
                    NoteModel newnote = NoteModel(
                      title: title!,
                      body: subtitle!,
                      createdAt: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(
                      context,
                    ).addNote(newNote: newnote);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
