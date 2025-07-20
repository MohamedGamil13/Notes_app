import 'package:flutter/material.dart';
import 'package:notes_app/pages/edit_note_page.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.text, required this.title});
  final String text;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditNotePage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: ListTile(
                subtitleTextStyle: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                ),
                titleTextStyle: const TextStyle(color: Colors.black),
                title: Text(title, style: TextStyle(fontSize: 25)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(text, style: TextStyle(fontSize: 18)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete, color: Colors.black, size: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'May21,2023',
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
