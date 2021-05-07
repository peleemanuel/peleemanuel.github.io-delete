import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:site_personal/widgets/navbaritem.dart';
import 'package:site_personal/widgets/navbarlogo.dart';


class NavBarDesktop extends StatelessWidget{
  const NavBarDesktop({Key key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height:75,
        padding: EdgeInsets.only(left: 60),
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  children: [
                    NavbarLogo(),
                    SizedBox(width: 0,),
                    Text('PELE EMANUEL',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Rajdhani',
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(width: 60,),
                    NavBarItem('HOME'),
                    SizedBox(width: 60,),
                    NavBarItem('PORTOFOLIU'),
                    SizedBox(width: 60,),
                    NavBarItem('CONTACT'),
                    SizedBox(width: 60,),
                  ],
                ),
              ],
        )
    );
  }

}