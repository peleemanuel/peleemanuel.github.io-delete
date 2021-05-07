import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:site_personal/widgets/draweritem.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12,blurRadius: 16),
          ]
      ),
      child: Column(
        children: <Widget>[
          DrawerItem('Acasa', FontAwesomeIcons.home),
          DrawerItem('Servicii', FontAwesomeIcons.cog),
          DrawerItem('Moneda', FontAwesomeIcons.bitcoin),
          DrawerItem('Contact', FontAwesomeIcons.wpforms),

        ],
      ),
    );
  }
}