import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pizzaapp/data/pizza_data.dart';
import 'package:pizzaapp/screens/pizza_container.dart';
import 'package:pizzaapp/screens/widgets/customz_fav_icons.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';
import 'package:pizzaapp/utils/constants/image_constants.dart';
import 'package:pizzaapp/utils/constants/text_constants.dart';
import 'package:pizzaapp/widgets/textstyle.dart';



class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
     AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 5,
            children: [
              SvgPicture.asset(ImageConstants.emoji),
              Text(TextConstants.name, style: TextStyle(color: AppColors.yellowColor)),
            ],
          ),
          Row(
            spacing: 3,
            children: [
              Icon(Icons.location_on, color: AppColors.yellowColor,),
              Text(TextConstants.cairo),
              Image.asset(ImageConstants.egypt),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
          CustomFavIcons()
        ],
      ),
    ),

    
    body: Column(
      children: [
        _buildpizzaladysection(),
        
        

        SizedBox(height: 30,),
        _searchSection(),
        SizedBox(height: 0,),
        Expanded(
          
          child: GridView.builder(
            itemCount: pizzaData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8), 
            itemBuilder: (context, int index){
              return PizzaCard(model: pizzaData[index],);
            })
        )
        
        

      ],

      
    ),
      
    );
  }





          Widget _searchSection(){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: TextFormField(
                    cursorColor: AppColors.kPrimaryColor,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: TextConstants.searchFor,
                      hintStyle: AppTextStyles.text18,
                      filled: true,
                      fillColor: AppColors.amberColor.withValues(alpha: 0.2),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: AppColors.kPrimaryColor,
                          width: 2
                        )
                      ),

                      enabledBorder: OutlineInputBorder(
                        
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      )
                      // border: OutlineInputBorder()
                    ),
                  )),
                  SizedBox(width: 18,),
                Expanded(
                  child:  Container(
                    
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: AppColors.amberColor.withValues(alpha: 0.2),
                        border: Border.all(
                         color: const Color.fromARGB(137, 197, 195, 195)
                        ),
                       
                      ),
                      child: Image.asset('images/filter1.png', height: 25,width: 25,)),),
                  
              ],
            ),
          );
        }









  Stack _buildpizzaladysection() {
    return Stack(
        children: [
              Container(
            margin: EdgeInsets.only(top: 30, right: 80, left: 80),
              height: 125,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 242, 216, 177),
                borderRadius: BorderRadius.circular(20)
              ),
             ),
        
             Container(
              margin: EdgeInsets.only(top: 30, right: 50, left: 50),
              height: 118,
              decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(20)
              ),
             ),   
          Container(
            
           padding: EdgeInsets.all(20),
           margin: EdgeInsets.only(left: 15, right: 15, top: 30),
           decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(30),
           color: AppColors.backgroundColor
           ),
            child: Column(
            children: [
             
              Row(
             spacing: 5,
             children: [
               Image.asset(ImageConstants.fire),
               Text(TextConstants.eat, style: AppTextStyles.text17,),
               SizedBox(width: 25,),
               Image.asset( ImageConstants.tomato)
             ],
            ),
                    
            Row(
             spacing: 5,
             children: [
               Image.asset(ImageConstants.emoji1),
               Text(TextConstants.fastdelivery, style: AppTextStyles.text20,),
               SizedBox(width: 120,),
               Image.asset(ImageConstants.leaf),
             ],
            ),
                    
            Row(
             spacing: 5,
             children: [
               Image.asset(ImageConstants.plusign),
               Text(TextConstants.nearForYou, style: AppTextStyles.text20,),
               SizedBox(width: 35,),
               Image.asset(ImageConstants.ring)
             ],
            )
                      ],
                    ),
          ),
          Positioned(
            right: 20,
            top: 15,
        child: SizedBox(
        
          child: Image.asset(ImageConstants.woman)))
        ],
      );
  }

  //pizza card
  
 

}




