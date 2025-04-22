import 'package:flutter/material.dart' ;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();  
}

class _LoginScreenState extends State<LoginScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3),
                BlendMode.srcOver
              )
            ),
            child: Image.asset(
              'assets/images/handdrip_background.png',
              fit:BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(),
            )
          )
        ]
      )
    );
  }
}

