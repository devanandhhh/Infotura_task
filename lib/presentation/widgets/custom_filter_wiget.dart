
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFilterWidget extends StatelessWidget {
  const CustomFilterWidget({
    required this.isSelected,
    required this.leadingIcon,
    required this.headingText,
    super.key,
  });
  final bool isSelected;
  final IconData leadingIcon;
  final String headingText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
          color: isSelected ? Colors.blue[100] : null,
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            leadingIcon,
            color: isSelected ? Colors.blue : Colors.black,
          ),
          Text(
            headingText,
            style: GoogleFonts.abel(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.blue[600] : Colors.black),
          )
        ],
      ),
    );
  }
}
