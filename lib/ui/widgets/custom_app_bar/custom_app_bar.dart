import 'package:flutter/material.dart';
import 'package:note_app/ui/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showSearch;
  const CustomAppBar({
    super.key,
    this.title,
    this.showSearch = false,
  });
  @override
  Size get preferredSize => const Size(double.infinity, 64);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryBgColor,
          boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 2,
              offset: Offset(0, 2),
              spreadRadius: 0,
            ),
          ],
        ),
      ),
      title: Text(
        title ?? 'Error',
        style: const TextStyle(
          color: AppColors.primaryTextColor,
          fontSize: 22,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          height: 0.06,
        ),
      ),
      centerTitle: true,
      actions: <Widget>[
        if(showSearch)
        IconButton(
          onPressed: () {},
          color: AppColors.secondaryTextColor,
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
