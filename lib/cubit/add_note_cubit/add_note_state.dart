part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteSucess extends AddNoteState {}

final class AddNotefailure extends AddNoteState {
  final String errormessage;
  AddNotefailure(this.errormessage);
}

final class AddNoteLoading extends AddNoteState {}
