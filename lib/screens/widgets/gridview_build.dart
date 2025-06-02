import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GRIDVIEW BUILD'),
      ),
      body: Stack(
        children: [
          GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 50,
            crossAxisCount: 2,
            children: [
              
              
              Container(
                decoration: BoxDecoration(
                 color:  Colors.red,
                 borderRadius: BorderRadius.circular(25)
                ),
              
              
              ),
              Container(
              color: Colors.red,
              
              ),
              Container(
              color: Colors.red,
              
              ),
              Container(
              color: Colors.red,
              
              )
            ],),
            Positioned(
              left: 70,
              top: 200,
              child: Image.asset('images/pizz1.png'))
        ],
      )
    );
  }
}