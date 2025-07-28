import 'package:flutter/material.dart';
import 'package:pizzaapp/data/pizza_data.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen'),
      ),
      body: ListView.builder(
        itemCount: pizzaCartList.length,
        itemBuilder: (
          
          context, index){
          return Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                    children: [
                      Container(
                        height: 80,
                        child: Image.asset(pizzaCartList[index].image, fit: BoxFit.cover,),

                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Text(pizzaCartList[index].name),
                         SizedBox(height: 10,),

                         Text(pizzaCartList[index].description)

                        ],
                      ),
                     
                    ],

                   ),
                    Text('\$${pizzaCartList[index].price.toStringAsFixed(2)}')
                  ],
                ),
               
              ],
            ),
            );
        }),
    );
  }
}