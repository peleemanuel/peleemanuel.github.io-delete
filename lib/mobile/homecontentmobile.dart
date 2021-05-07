import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class HomeContentMobile extends StatefulWidget{
  const HomeContentMobile({Key key}):super(key: key);

  @override
  _HomeContentMobile createState() => _HomeContentMobile();

}
class _HomeContentMobile extends State<HomeContentMobile>
with TickerProviderStateMixin {

  Animation<int> _characterCount;

  int _stringIndex;
  static const List<String> _kStrings = const <String>[
    'I am a senior in National Highschool of Informatics Arad. I have a passion for everything that includes STEM. I want to learn and do as much as I could about digital zone.',
  ];
  String get _currentString => _kStrings[_stringIndex % _kStrings.length];

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() async{
      AnimationController controller = new AnimationController(
        duration: const Duration(milliseconds: 8000),
        vsync: this,
      );
      setState(() {
        _stringIndex = _stringIndex == null ? 0 : _stringIndex + 1;
        _characterCount = new StepTween(begin: 0, end: _currentString.length)
            .animate(new CurvedAnimation(parent: controller, curve: Curves.easeIn));
      });
      await  controller.forward();
      controller.dispose();
    }));
  }
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20,bottom: 80,),
      child: Center(
          child: FadeInDown(
            child:Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Center(
                        child: DelayedDisplay(
                            delay: Duration(seconds: 1),
                            child:FadeInUp(
                              child: Container(
                                width: 150,
                                child: Image.asset('assets/profile-sq.png',),
                              ),
                            ))
                    ),
                    SizedBox(height: 20,),
                    DelayedDisplay(
                        delay: Duration(seconds: 1),
                        child:FadeInUpBig(child:Text('PELE EMANUEL',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        )
                        )
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: DelayedDisplay(child: AnimatedBuilder(
                        animation: _characterCount,
                        builder: (BuildContext context, Widget child) {
                          String text = _currentString.substring(0, _characterCount.value);
                          return new Text(text,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,
                              ));
                        },
                      ),
                        delay: Duration(seconds: 1),),
                    )
                  ]
              ),
            ),
          )
      ),
    );

  }
}