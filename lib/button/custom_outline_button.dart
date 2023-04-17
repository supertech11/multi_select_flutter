import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final Text label;
  final Color labelColor, buttonColor;
  final bool hasBorder;

  final VoidCallback? onPressed;

  const CustomOutlineButton({
    Key? key,
    required this.label,
    this.labelColor = Colors.black,
    this.buttonColor = Colors.white,
    this.hasBorder = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          elevation: buttonColor == Colors.transparent ? 0 : 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: hasBorder ? labelColor : Colors.transparent,
            ),
          ),
        ),
        child: label,
      ),
    );
  }
}
