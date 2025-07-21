import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constansts.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  var notesbox = Hive.box(KBox);
  void addNote({required NoteModel newNote}) {
    emit(AddNoteLoading());
    try {
      notesbox.add(newNote);
      emit(AddNoteSucess());
    } catch (e) {
      emit(AddNotefailure(e.toString()));
    }
  }
}
