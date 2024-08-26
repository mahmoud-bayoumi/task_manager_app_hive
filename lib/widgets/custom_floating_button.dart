

import 'package:flutter/material.dart';
import 'package:notes_app/views/add_note_view.dart';

class CustomFloatinActionButton extends StatelessWidget {
  const CustomFloatinActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      style: IconButton.styleFrom(
        iconSize: 35,
        backgroundColor: Colors.black,
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNotePage(),
            ));
      },
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
