
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onClick, this.nameButton, this.backgroundColor});

  final Function()? onClick ;
  final String? nameButton ;
  final Color? backgroundColor ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        backgroundColor: backgroundColor?? Colors.blue),
      onPressed: onClick,
      child: Text(nameButton ?? 'Tùy chọn', style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: Colors.white
      ),)
      
      );
  }
}