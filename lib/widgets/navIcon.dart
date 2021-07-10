import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  const NavIcon({Key? key, this.isSelected = false, required this.iconData})
      : super(key: key);

  final bool isSelected;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          iconData,
          color: isSelected ? Colors.black : Color(0xFFB9BABC),
        ));
  }
}
