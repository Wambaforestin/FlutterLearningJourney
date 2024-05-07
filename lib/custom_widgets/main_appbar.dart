import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double elevation;
  final List<Widget> actions;

  const MainAppBar({
    super.key,
    required this.title,
    this.elevation = 4.0,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      elevation: elevation,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
