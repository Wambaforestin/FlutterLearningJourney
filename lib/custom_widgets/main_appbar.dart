import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double elevation;
  final Color backgroundColor;
  final List<Widget> actions;

  const MainAppBar({
    super.key,
    required this.title,
    this.elevation = 4.0,
    this.actions = const [],
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(title),
      elevation: elevation,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
