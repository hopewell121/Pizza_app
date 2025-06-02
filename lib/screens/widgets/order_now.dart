import 'package:flutter/material.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';

class OrderNow extends StatelessWidget {
  const OrderNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 50,
      
      child: Container(
        margin: EdgeInsets.only(bottom: 10,),
        padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(20)
      
        ),
        child: Text('Order Now')),
    );
  }
}