import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:site_personal/widgets/navbar.dart';

import 'desktop/homecontentdesktop.dart';
import 'mobile/homecontentmobile.dart';
import 'mobile/navigationdrawer.dart';
import 'widgets/centeredview.dart';

class HomeView extends StatelessWidget{
  const HomeView({Key key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation)=>Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile || sizingInformation.deviceScreenType == DeviceScreenType.tablet ? NavigationDrawer() : null,
            backgroundColor: Colors.white,
            body: CenteredView(
              child: Column(

                children: <Widget>[
                  NavigationBar(),
                  Expanded(child:ScreenTypeLayout(
                    mobile: HomeContentMobile(),
                    tablet: HomeContentMobile(),
                    desktop: HomeContentDesktop(),
                  )
                  )
                ],
              ),
            )
        )
    );
  }

}