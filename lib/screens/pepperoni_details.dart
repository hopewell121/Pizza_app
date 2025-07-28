import 'package:flutter/material.dart';
import 'package:pizzaapp/data/pizza_data.dart';
import 'package:pizzaapp/screens/selected_icon.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';
import 'package:pizzaapp/utils/constants/image_constants.dart';
import 'package:pizzaapp/utils/constants/text_constants.dart';
import 'package:pizzaapp/widgets/textstyle.dart';

class PepperoniDetails extends StatefulWidget {
  final PizzaModel pizzDetails;
  const PepperoniDetails({super.key, required this.pizzDetails});

  @override
  State<PepperoniDetails> createState() => _PepperoniDetailsState();
}

class _PepperoniDetailsState extends State<PepperoniDetails> {
  int? selectedIndex;

  // final List <String> items =List.generate(3, (index){
  //   return 'items ${index + 1}';
  // });

  final List <String> items = List.generate(3, (index)=>'${index + 1 }');
  int _counter = 1;
  bool isLoading = false;
  bool isbutton = false;
  bool isbutton1 = false;
  bool isbutton2 = false;



  
  //  void setLoader(){
  //   setState(() {
  //     isLoading = true;
  //   });
  //  }

  //  void stopLoader(){
  //   setState(() {
  //     isLoading = false;
  //   });
  //  }

  void incrementCounter(){
    setState(() {
      _counter++;

      
    });

    // setLoader();
  }

    void decrementCounter(){
    setState(() {
      if ( _counter>1) {
        _counter--;
      }
      
    });

    // stopLoader();
  }

  void itemPrice(){
    setState(() {
      if ( _counter>1) {
        _counter--;
      }
      
    });

    
  }
 
 
  @override
  Widget build(BuildContext context) {
    double totalPrice = _counter * widget.pizzDetails.price;
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 246, 245, 245),
      body: Stack(
        children: [
          Column(
            children: [
              Column( 
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(220), bottomRight: Radius.circular(220)),
                      color: AppColors.circlecolor,
                    ),
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height/2,
                    
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 216, 214, 214)
                          ),
                         color: AppColors.circlecolor,
                         borderRadius: BorderRadius.circular(200)
                        ),
                        width: 380,
                        height: 380,
                        
                      ),
              
                      
                    )
                  ),
              
                  SizedBox(height: 40,),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Row(
                    spacing: 5,
                    children: [
                      Image.asset(ImageConstants.fire, height: 10, width: 10,),
                      Text(widget.pizzDetails.name, style: AppTextStyles.text24,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Row(
                    children: [
                      Image.asset(ImageConstants.starImage, height:25, width: 25,),
                      Text(TextConstants.five),
                    ],
                  ),
                )
              
                    ],
                  ),
                  
                  Container(
                    margin: EdgeInsets.only( top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 5,
                      children: [
                       Container(
                       
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 55, left: 25),
                              child: Image.asset(ImageConstants.emoji1),
                            ),
                            Text(widget.pizzDetails.description, style: AppTextStyles.text30,),
                          ],
                        )),
                      
                        Padding(
                          padding: const EdgeInsets.only(bottom: 55, right: 25),
                          child: Text(TextConstants.percentage, style: AppTextStyles.text30,),
                        )
                      ], 
                    ),
                  ),
              
                  SizedBox(height: 15,),
              
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      spacing: 5,
                      children: [
                        Image.asset(ImageConstants.plusign),
                        Text.rich(TextSpan(
                          text: TextConstants.ingredient, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                          children: [
                            TextSpan(
                              text: TextConstants.customable, style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15)
                            )
                          ]
                        ))
                      ],
                    ),
                  ),
              
                  SizedBox(height: 20,),
              
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Row(
                  //       spacing: 5,
                  //       children: [
                  //         _cardbox(Image.asset(ImageConstants.greenleaf, height: 30, width: 30,), AppColors.circleavaterColor),
                  //         _cardbox(Image.asset(ImageConstants.tomatoes, height: 30, width: 30,), AppColors.circleavaterColor),
                  //         _cardbox(Image.asset(ImageConstants.crab, height: 30, width: 30,), AppColors.circleavaterColor),
                  //         _cardbox(Image.asset(ImageConstants.pepper, height: 30, width: 30,), AppColors.circleavaterColor),
                  //         _cardbox(Image.asset(ImageConstants.cocumber, height: 30, width: 30,), AppColors.circleavaterColor),
                  //         _cardbox(Image.asset(ImageConstants.onions, height: 30, width: 30,), AppColors.circleavaterColor),
                  //         _cardbox(Image.asset(ImageConstants.maize, height: 30, width: 30,), AppColors.circleavaterColor),
                  //         _cardbox(Image.asset(ImageConstants.groundnut, height: 30, width: 30,), AppColors.circleavaterColor),
                         
                          
                  //       ],
                  //     ),
                  //      _cardbox(Image.asset(ImageConstants.editpen, height: 30, width: 30,), AppColors.yellowColor),
                  //   ],
                  // )
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        
                        spacing: 5,
                        children: [
                          CardBox(image: Image.asset(ImageConstants.greenleaf, ), color: AppColors.circleavaterColor,),
                          CardBox(image: Image.asset(ImageConstants.tomatoes, ),color: AppColors.circleavaterColor,),
                          CardBox(image: Image.asset(ImageConstants.crab, ),color: AppColors.circleavaterColor,),
                          CardBox(image: Image.asset(ImageConstants.pepper, ),color: AppColors.circleavaterColor,),
                          CardBox(image: Image.asset(ImageConstants.cocumber, height: 16, width: 16,),color: AppColors.circleavaterColor,),
                          CardBox(image: Image.asset(ImageConstants.onions,  height: 16, width: 16),color: AppColors.circleavaterColor,),
                          CardBox(image: Image.asset(ImageConstants.maize, height: 16, width: 16 ),color: AppColors.circleavaterColor,),
                          CardBox(image: Image.asset(ImageConstants.groundnut,  height: 16, width: 16),color: AppColors.circleavaterColor,),
                        ],
                      ),
                      CardBox(image: Image.asset(ImageConstants.editpen, height: 28, width: 28,),color: AppColors.yellowColor, borderRadius: BorderRadius.circular(5),padding: Padding(padding: EdgeInsets.all(10)),),
                    ],
                  ),
                  SizedBox(height: 20,),
              
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 5,
                          children: [
                            Image.asset(ImageConstants.moshape),
                            Text(TextConstants.count, style: TextStyle(fontSize: 16),),
                          ],
                        ),
                        Row(
                          children: [
                            Text(TextConstants.dollarsSign, style: TextStyle(fontSize: 22),),
                            Text(TextConstants.price, style: TextStyle(fontSize: 18),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(TextConstants.dollarsSign, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                        ),
                        Text('\$${totalPrice.toStringAsFixed(2)}', style: AppTextStyles.text50,)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
              
                 isLoading? CircularProgressIndicator(): Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.only(
                        top: 15, bottom: 15
                      ),
                      color: AppColors.yellowColor,
                      minWidth: double.infinity,
                      onPressed: (){},
                      child: Text(TextConstants.orderNow, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),),),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            left: 60,
            top: 80,
            child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 216, 214, 214)
                        ),
                       color: AppColors.circlecolor,
                       borderRadius: BorderRadius.circular(200)
                      ),
                      width: 320,
                      height: 320,
                      
                    ),
          ),
          Positioned(
            left: 82,
            top: 100,
            child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 216, 214, 214)
                        ),
                       color: AppColors.circlecolor,
                       borderRadius: BorderRadius.circular(200)
                      ),
                      width: 280,
                      height: 280,
                      
                    ),
          ),
         Positioned(
          top: 120,
          right: 100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(255, 214, 210, 210)
                ),
            color: AppColors.circleavaterColor
              ),
              child: CircleAvatar(
                backgroundColor: AppColors.circleavaterColor, 
                radius: 120,
                child: SizedBox(
                  height: 220,
                  width: 220,
                  child: Image.asset(widget.pizzDetails.image,fit: BoxFit.cover,)),
              ),
            ),
          ),
          Positioned(
            top: 435,
            left: 110,
            child: TextButton(
              style: TextButton.styleFrom(
                 padding: EdgeInsets.symmetric(horizontal: 10),
                  minimumSize: Size(40, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
               
        ),
        backgroundColor: isbutton? AppColors.kPrimaryColor: AppColors.circleavaterColor
              ),
              onPressed: () {
                setState(() {
                  isbutton = !isbutton;
                });
              },


              child: Text('S', style: TextStyle(fontSize: 22, color: Colors.black),))),
            Positioned(
              top: 450,
              left: 200,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  minimumSize: Size(40, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),         
                    ),
                     backgroundColor: isbutton1? AppColors.kPrimaryColor: AppColors.circleavaterColor
                ),
                onPressed: () {
                  setState(() {
                    isbutton1 = !isbutton1;
                  });
                  
                },
                child: Text('M', style: TextStyle(fontSize: 22, color: Colors.black),))),
                
              Positioned(
                top: 435,
                left: 290,
                child: TextButton(
                  style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  minimumSize: Size(40, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),         
                    ),
                     backgroundColor: isbutton2? AppColors.kPrimaryColor: AppColors.circleavaterColor
                ),
                onPressed: () {
                  setState(() {
                    isbutton2 = !isbutton2;
                  });
                },
                  child: Text('L' , style: TextStyle(fontSize: 22, color: Colors.black),))),


                

                
          Positioned(
            right: 20,
            top: 50,
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(255, 215, 213, 213)
                ),
                color: const Color.fromARGB(255, 231, 231, 231),
                borderRadius: BorderRadius.circular(15)
              ),
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  =>SelectedColor()));
                },
                child: Icon(Icons.favorite_outline, size: 30,))
            )
            ),

             Positioned(
            left: 20,
            top: 50,
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(255, 215, 213, 213)
                ),
                color: const Color.fromARGB(255, 231, 231, 231),
                borderRadius: BorderRadius.circular(15)
              ),
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(ImageConstants.arrowImage, height: 30, width: 30,))
            )
            ),

         

                  Positioned(
            bottom: 115,
            left: 55,
            child: Container(
              
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 215, 213, 213),
                      borderRadius: BorderRadius.circular(3),
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:5, left: 16, right: 16, top: 5),
                      child: Text('$_counter', style: TextStyle(fontSize: 17, fontWeight:FontWeight.w700 ),),
                    ),
                  )),

                   Positioned(
            bottom: 115,
            left: 20,
            child: Container(
              
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
                      child: GestureDetector(
                        onTap: decrementCounter,
                        child: Icon(Icons.minimize_outlined)),
                    ),
                  )),

                  Positioned(
            bottom: 115,
            left: 103,
            child: Container(
              
                    padding: EdgeInsets.only(top: 10, right: 5, left: 5),
                    decoration: BoxDecoration(
                      color: AppColors.yellowColor,
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
                      child: GestureDetector(
                        onTap: incrementCounter,
                        child: Image.asset(ImageConstants.plusSign, height: 25, width: 25,))
                    ),
                  )),
        ],

        
      ),
    );
  }

  // _cardbox(Image image,  Color color){
  //   return Container(
  //      padding: EdgeInsets.all(4),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(10),
  //       color: color
  //     ), 
  //     child: image
  //   );
  // }



  _sizeIcon(String text, Color color){
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 10),
        minimumSize: Size(40, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        backgroundColor: color, 
      ),
      onPressed: (){}, 
    child: Text(text, style: TextStyle(fontSize: 20,),),);
  }
}

class CardBox extends StatelessWidget {
  final Image? image;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final Padding? padding;
  const CardBox({
    super.key,
    this.image,
    this.color,
    this.borderRadius,
    this.padding,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: image,
    );
  }
}


