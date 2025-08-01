import 'package:flutter/material.dart';
import 'package:pizzaapp/screens/homepage.dart';
import 'package:pizzaapp/storage/user_storage.dart';
import 'package:pizzaapp/utils/constants/text_constants.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TextConstants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UserPreferences.isLoggedIn()? MyHomePage():  MyHomePage(),
    );
  }
}