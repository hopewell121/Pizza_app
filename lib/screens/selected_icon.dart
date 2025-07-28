import 'package:flutter/material.dart';

class SelectedColor extends StatefulWidget {
  const SelectedColor({super.key, });
  

  @override
  State<SelectedColor> createState() => _SelectedColorState();
}

class _SelectedColorState extends State<SelectedColor> {
  bool isSelected  = false;
  bool isSelected1 =false;
  bool isSelected2 = false;
  bool isSelected3 = false;


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Text('House', style: TextStyle(color: isSelected?  Colors.amber : Colors.black),)),

          TextButton(
            style: ButtonStyle(
             
            ),
            onPressed: () {
              setState(() {
                isSelected1 = !isSelected1;
              });
            },
            child: Text('Car',  style: TextStyle(color: isSelected1? const Color.fromARGB(255, 77, 24, 223) : Colors.black),)),

          TextButton(
            onPressed: () {
              setState(() {
                 isSelected2 = !isSelected2;
              });
             
            },
            child: Text('Bike' , style: TextStyle(color: isSelected2? const Color.fromARGB(255, 53, 222, 35) : Colors.black),)), 

          TextButton(
            
            onPressed: () {
              setState(() {
                isSelected3 = !isSelected3;
              });
            },
            child: Text('Bicycle', style: TextStyle(color: isSelected3? Colors.red : Colors.black),))
        ],
        ),
      )
      
    );
  }
}