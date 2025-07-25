import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constansts.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild({
    super.key,
    required this.label,
    this.maxlines = 1,
    this.onSaved,
  });
  final String label;
  final int maxlines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is Reqiured';
          } else {
            return null;
          }
        },
        onSaved: onSaved,
        maxLines: maxlines,
        cursorColor: KprimaryColor,
        decoration: InputDecoration(
          hint: Text(label),
          hintStyle: TextStyle(color: Colors.cyanAccent, fontSize: 35),
          border: textfeildBorder(),
          enabledBorder: textfeildBorder(),
          focusedBorder: textfeildBorder(KprimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder textfeildBorder([Color]) => OutlineInputBorder(
    borderSide: BorderSide(color: Color ?? Colors.white),
    borderRadius: BorderRadius.circular(8),
  );
}
