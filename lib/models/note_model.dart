import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 1)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});

  NoteModel copyWith({
    String? title,
    String? content,
    String? date,
    int? color,
  }) {
    return NoteModel(
      title:
          title ?? this.title, // إذا كان title غير مُقدم، استخدم القيمة الحالية
      subTitle: content ?? this.subTitle, date: this.date,
      color: color ?? this.color,
    );
  }
}
