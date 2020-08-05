import 'package:flutter/material.dart';
import 'dart:math';
import 'select_country.dart';
import 'package:vote_by_mail/Config/config.dart';

class InitialLoader extends StatefulWidget {
  @override
  _InitialLoaderState createState() => _InitialLoaderState();
}

class _InitialLoaderState extends State<InitialLoader> with TickerProviderStateMixin {
  Animation _arrowAnimation, _heartAnimation;

  AnimationController _arrowAnimationController, _heartAnimationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _arrowAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _arrowAnimation =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController);


    _heartAnimationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    _heartAnimation = Tween(begin: 150.0, end: 170.0).animate(CurvedAnimation(
        curve: Curves.bounceOut, parent: _heartAnimationController));

    _heartAnimationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _heartAnimationController.repeat();
      }

    });


    _heartAnimationController.forward();

    Future.delayed(const Duration(seconds: 1), () {
      MutualActions.goToView(SelectCounty(), context);
    });

  }
  /**/

  Widget firstChild() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        AnimatedBuilder(
          animation: _arrowAnimationController,
          builder: (context, child) => Transform.rotate(
            angle: _arrowAnimation.value,
            child: Icon(
              Icons.expand_more,
              size: 50.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          secondChild(),
          SizedBox(
            height: 80.0,
          ),

        ],
      ),
    );
  }

  Widget secondChild() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: AnimatedBuilder(
            animation: _heartAnimationController,
            builder: (context, child) {
              return Center(
                child: Image(
                  image: AssetImage('images/logo.png'),
                  width: _heartAnimation.value,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _arrowAnimationController?.dispose();
    _heartAnimationController?.dispose();
  }

}
