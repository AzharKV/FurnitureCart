import 'package:cs_test/constFiles/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OptionContainer extends StatelessWidget {
  const OptionContainer({
    Key? key,
    this.isSelected = false,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final bool isSelected;
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.only(bottom: 20.0, right: 15.0),
      decoration: BoxDecoration(
          color: isSelected ? Colors.black : Color(0xFFF8F8F8),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                  color: Color(0x4d000000),
                  offset: Offset(0, 10),
                  blurRadius: 10)
          ]),
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath + icon,
            width: 22,
            height: 22,
            color: isSelected ? Colors.white : Colors.black,
          ),
          SizedBox(width: 15.0),
          Text(
            text,
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
