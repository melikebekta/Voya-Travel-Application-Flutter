import 'package:flutter/material.dart';
import 'package:voya/Screen/HomePage.dart';
import 'package:voya/Screen/Main.dart';
import 'package:voya/Utils/Color.dart';
import 'package:voya/Widgets/Topbar_Widget.dart';

import '../Widgets/Bottombar_Widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50
          ,),
        Text(
          'E-mail',
          style: TextStyle(
            color: ColorC.btext,
            fontFamily: 'RobotoM'

          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          textAlign: TextAlign.start,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
              labelText: 'E-mail adresinizi giriniz',
              labelStyle: TextStyle(
                  fontFamily: 'Cantarell',
                  color: ColorC.ltext
              )
          ),
        ),
        const SizedBox(height: 15),
        Text(
          'Şifre',
          style: TextStyle(
            color: ColorC.btext,
            fontFamily: 'RobotoM',
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          textAlign: TextAlign.start,
          obscureText: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
              labelText: 'Şifrenizi giriniz',
              labelStyle: TextStyle(
                fontFamily: 'Cantarell',
                color: ColorC.ltext
              )
          ),
        ),
        SizedBox(height: 20,),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          style: flatButtonStyle1,
          child: Text('Giriş Yap',
            style: styleh3,
          ),
        ),
        SizedBox(height: 20,),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          style: flatButtonStyle2,
          child: Text('Üye Ol',
            style: styleh4,
          ),
        ),
      ],

      )
      ),
       ],
        ),
      ),
      bottomNavigationBar: Bottombar(),
    );
  }
}
