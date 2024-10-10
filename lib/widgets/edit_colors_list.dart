import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/widgets/color_item.dart';

class EditColorsList extends StatefulWidget {
  const EditColorsList({super.key});

  @override
  State<EditColorsList> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<EditColorsList> {
  List<Color> colors = [
    Color(0xffF8FFE5),
    Color(0xff06D6A0),
    Color(0xff1B9AAA),
    Color(0xffEF476F),
    Color(0xffFFC43D),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<NotesCubit>(context).selectedColor =
                      colors[index];
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: colors[index],
                ),
              ),
            );
          }),
    );
  }
}
