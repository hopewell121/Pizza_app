import 'package:flutter/material.dart';

import 'package:pizzaapp/screens/second_page.dart';
import 'package:pizzaapp/screens/widgets/custom_button.dart';
import 'package:pizzaapp/screens/widgets/gridview_build.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';
import 'package:pizzaapp/utils/constants/image_constants.dart';
import 'package:pizzaapp/utils/constants/text_constants.dart';
import 'package:pizzaapp/widgets/textstyle.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));
            }, 
            child: Text(TextConstants.skip, style: TextStyle(color: Colors.black),
            ),)

        ],
      ),
      body:Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.maxFinite,
                height: MediaQuery.sizeOf(context).height/2,
                color: Color.fromARGB(255, 234, 230,223),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Image.asset('images/cooker.png'),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> GridViewExample()));
                      },
                      
                      child: Image.asset(ImageConstants.pizza)),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Text(TextConstants.forYou, 
                      style:text18(AppColors.blackColor,25,
                       FontWeight.w600)),
                    ),
                     
                    Row(
                      spacing: 5,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     Padding(
          
                       padding: const EdgeInsets.only(bottom: 30),
                       child: Image.asset(ImageConstants.flash),
                     ),
                     Opacity(
                      opacity: 0.6,
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(TextConstants.everyday, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),)
                         ],
                       ),
                     ),
                     
                      ],
                    ),
          
                    Container(
                      margin: EdgeInsets.only(bottom: 30, top: 40),
                      child: MyButton(
                        text: TextConstants.signUpWithEmail, color: AppColors.amberColor, onPressed: (){},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: MyButton(text: TextConstants.signUpWithGoogle, color: AppColors.yellowColor, onPressed: (){},))
                  ],
                ),
              )
            ],
          ),
             Positioned(
              top: 10,
              right: 30,
              height: 420,
              child: Image.asset(ImageConstants.chef),)
        ],
      ),
    );
  }
}