import 'package:flutter/material.dart';
import 'package:note_app/ui/theme/app_colors.dart';
import 'package:note_app/ui/theme/app_text_styles.dart';
import 'package:note_app/ui/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Заметки',
        showSearch: true,
      ),
      body: NoteList(),
    );
  }
}

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) => const NoteItem(),
      separatorBuilder: (context, i) => const SizedBox(height: 16),
      itemCount: 8,
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 119,
        decoration: const BoxDecoration(
          color: AppColors.primaryBgColor,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 2,
              offset: Offset(0, 1),
              spreadRadius: 0,
            ),
          ],
        ),
        child: const NoteItemContent(),
      ),
    );
  }
}

class NoteItemContent extends StatelessWidget {
  const NoteItemContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Title',
          style: AppTextStyles.noteTitle,
        ),
        SizedBox(height: 5),
        Text(
          '17.01.2024',
          style: AppTextStyles.noteDate,
        ),
        SizedBox(height: 9),
        Text(
          'Рандомайзер слов случайным образом генерируу.',
          style: AppTextStyles.noteText,
        ),
      ],
    );
  }
}
