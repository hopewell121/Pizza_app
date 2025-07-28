import 'package:flutter/material.dart';
import 'package:pizzaapp/screens/second_page.dart';
import 'package:pizzaapp/screens/widgets/custom_button.dart';
import 'package:pizzaapp/utils/constants/app_colors.dart';

class LoginPage extends StatefulWidget {
  
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailcontroller= TextEditingController();
  final _passwordcontroller = TextEditingController();


  void _signInPage(){
    // if(_emailcontroller.text== 'hope@gmail.com' && _passwordcontroller.text == '1234')
    // {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondPage()));
    // }

    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Successful')),);

    // if (_emailcontroller.text!=_emailcontroller.text && _passwordcontroller.text != _passwordcontroller.text){
    //    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('invalid email address or password')),);
    // }

  } 

  
  bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Log in', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text('Email', style: TextStyle(fontSize: 18),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: TextFormField(
                  controller: _emailcontroller,
                  autocorrect: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                 border: OutlineInputBorder()
                  ),
                  
                ),
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text('Password', style: TextStyle(fontSize: 18),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: TextFormField(
                  controller: _passwordcontroller,
                  obscureText: true,
                  autocorrect: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                 border: OutlineInputBorder()
                  ),
                  
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Row(
                      children: [
                        Switch(value: isSwitch, onChanged: ( value){
                          setState(() {
                            isSwitch != isSwitch;
                          });
                        }),    
                        Text('Remember login'),
                      ],
                    ),
                    Text('Login with FaceID')
                  ],
                ),
              ),
SizedBox(height: 30,),
              MyButton(
                onPressed: (){
                 _signInPage();
                },
                color: AppColors.kPrimaryColor,
                text: 'Login',
              ),
SizedBox(height: 20,),
              Text('Forgot Password?')

            ],
          ),
        ),
      )
      
    );
  }
}
