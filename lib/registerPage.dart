import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          "WELLCOME",
          style: Theme.of(context).textTheme.displaySmall,
          ),

          // bottom: const TabBar(
          //   tabs: [
          //     Tab(
          //       icon: Icon(Icons.pets),
          //     )
          //   ],
          //   ),
        
      ),
    );
  }
}