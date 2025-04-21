import 'package:flutter/material.dart';

class BeanieApp extends StatelessWidget {
  const BeanieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beanie',
      theme: ThemeData(...),
      initialRoute: '/',
      routes:{
        '/': (context) => const AuthGate(),
        '/login': (context) => const LoginScreen),
        '/home' : (context) => const HomeScreen(),
        '/add_bean': (context) => const AddBeanScreen(),
        '/add_recipe': (context) => const AddRecipeScreen(),
        '/bean_detail': (context) => const BeanDetailScreen(),
        
      }
    );
  }
}
