import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
   super.key,
   this.color,
   this.onPressed,
   this.text
    
    });

final Color? color;
final void Function()? onPressed;
final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity,56),
          backgroundColor: color
        ),
        onPressed: onPressed, 
        child: Text(text.toString(), style: TextStyle(fontSize: 20,
        color: Colors.black),)),
    );
  }
}