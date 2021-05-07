import 'package:flutter/material.dart';

class NavbarLogo extends StatelessWidget{
  const NavbarLogo({Key key}) : super (key:key);
  @override
  Widget build(BuildContext context){
    return SizedBox(
        height: 60,
        width: 60,
        child: Image.asset('assets/Logo.png')
    );
  }

}