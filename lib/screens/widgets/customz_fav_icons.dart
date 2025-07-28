import 'package:flutter/material.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';

class CustomFavIcons extends StatelessWidget {
  final double? size;
  final Color? color;
  const CustomFavIcons({super.key, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(size?? 13),
      decoration: BoxDecoration(
        color: color ?? AppColors.amberColor.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Icon(Icons.favorite_outline_outlined),
    );
  }
}