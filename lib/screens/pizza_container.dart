import 'package:flutter/material.dart';
import 'package:pizzaapp/data/pizza_data.dart';
import 'package:pizzaapp/screens/pepperoni_details.dart';
import 'package:pizzaapp/screens/widgets/customz_fav_icons.dart';
import 'package:pizzaapp/screens/widgets/order_now.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';
import 'package:pizzaapp/utils/constants/image_constants.dart';

import 'package:pizzaapp/widgets/textstyle.dart';

class PizzaCard extends StatefulWidget {
  final PizzaModel model;
  const PizzaCard({super.key, required this.model});

  @override
  State<PizzaCard> createState() => _PizzaCardState();
}

class _PizzaCardState extends State<PizzaCard> {
  bool isfav = false; // variable to toggle the color


// A method to toggle ot change the color

  void togglefa (){
    setState(() {
      isfav = !isfav;
    });
  }

  // Methid to add items to cart

  void addItemToCart(){
    setState(() {
      pizzaCartList.add(widget.model);
    });

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Item successfuly added to card')));

    // print('Cart lenght: ${pizzaCartList.length.toString()}');
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PepperoniDetails(pizzDetails: widget.model,)));
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: 174,
              // height: 200,
              decoration: BoxDecoration(
                color: AppColors.amberColor.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(18)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 20),
                    child: Text(widget.model.name, style: text18(Colors.black, 15, FontWeight.w600),),
            
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.only(bottom: 30),
                        child: Image.asset(ImageConstants.emoji1)),
                      Text(widget.model.description, style: AppTextStyles.text40,),
                      
                    ],
                  ),
            
                  Container(
                    padding: EdgeInsets.only(top: 15, ),
                    child: Text('\$${widget.model.price.toStringAsFixed(0)}', style: TextStyle(fontWeight: FontWeight.bold),), )
                ],
              ),
            ),
          ),
          ),
          Positioned(
            top: 15,
            left: 68,
            child: CircleAvatar(
              radius: 38,
              backgroundColor: AppColors.greycolor.withValues(alpha: 0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(widget.model.name, fit: BoxFit.cover,),
              )
            
            ),
          ),
          Positioned(
            top: 25,
            right: 15,
            child: GestureDetector(
              onTap: (){
                addItemToCart();
                togglefa();
              },
              child: CustomFavIcons(size: 10, color: isfav ? AppColors.kPrimaryColor: AppColors.amberColor.withValues(alpha: 0.2),))),

            
            OrderNow()

      ],
    );
  }
}

