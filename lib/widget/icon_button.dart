import 'package:flutter/material.dart';

class IconAnimeButton extends StatelessWidget {
  final Icon icon;
  final void Function()? action;
  const IconAnimeButton({super.key, required this.icon, this.action});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Ink(
          child: IconButton(onPressed: action, icon: icon, iconSize: 24),
        ),
      ),
    );
  }
}
