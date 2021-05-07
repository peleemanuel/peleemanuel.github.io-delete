import 'package:flutter/material.dart';
import 'package:site_personal/widgets/navbarlogo.dart';


class NavBarMobile extends StatelessWidget{
  const NavBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,

        child: Column(
          children: [

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.menu),
                    onPressed: (){
                      Scaffold.of(context).openDrawer();
                    }
                ),
                NavbarLogo()
              ],
            ),
          ],
        )
    );
  }

}