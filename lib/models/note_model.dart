import 'package:hive/hive.dart';

class NoteModel extends HiveObject {
  final String title;
  final String subTitle;
  final String description;

  NoteModel({required this.title, required this.subTitle, required this.description}); 
}
