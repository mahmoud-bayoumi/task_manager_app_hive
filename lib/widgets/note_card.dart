import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/view_note_view.dart';

class NoteCard extends StatefulWidget {
  final NoteModel noteModel;
  const NoteCard({super.key, required this.noteModel});

  @override
  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ViewNotePage(
                    noteModel: NoteModel(
                        title: widget.noteModel.title,
                        subTitle: widget.noteModel.subTitle,
                        description: widget.noteModel.description)),
              ));
        },
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: ListTile(
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditNotePage(
                                  note: widget.noteModel,
                                )));
                  },
                  icon: const Icon(
                    Icons.edit,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    widget.noteModel.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 30,
                  ),
                ),
              ],
            ),
            title: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              widget.noteModel.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              widget.noteModel.subTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
