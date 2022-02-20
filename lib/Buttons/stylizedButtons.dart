import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StylizedButtons extends StatefulWidget {
  const StylizedButtons({
    Key? key,
  }) : super(key: key);

  @override
  State<StylizedButtons> createState() => _StylizedButtonsState();
}

class _StylizedButtonsState extends State<StylizedButtons> {
  bool _isNPressed = false, _isGPressed = false;
  double _radius = 20;
  double _height = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //NeumorphismButton
        Container(
          height: _height,
          color: Colors.grey[300],
          child: Center(
            child: InkWell(
              //Can use GestureDetector if you wanted more control
              onTap: () {
                setState(() {
                  _isNPressed = !_isNPressed;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      spreadRadius: _isNPressed ? 2 : 0,
                      blurRadius: _isNPressed ? 5 : 0,
                      offset: _isNPressed ? Offset(5, 5) : Offset(0, 0),
                    ),
                    BoxShadow(
                      color: Colors.white60,
                      spreadRadius: 0,
                      blurRadius: _isNPressed ? 5 : 0,
                      offset: _isNPressed ? Offset(-5, -5) : Offset(0, 0),
                    )
                  ],
                ),
                height: 50,
                width: 150,
                child: const Center(
                  child: Text(
                    'NEUMORPHISM BUTTON',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        //GlassmorphismButton
        Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            //Background Image
            Image.network(
              "https://wallpaperboat.com/wp-content/uploads/2021/06/16/77541/windows-11-01.jpg",
              fit: BoxFit.fitWidth,
              height: _height,
              width: double.infinity,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(_radius),
                child: BackdropFilter(
                  filter: _isGPressed
                      ? ImageFilter.blur(sigmaX: 1, sigmaY: 1)
                      : ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _isGPressed = !_isGPressed;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                          border: _isGPressed
                              ? Border.all(color: Colors.black87)
                              : Border.all(color: Colors.white30),
                          borderRadius: BorderRadius.circular(_radius),
                          boxShadow: [
                            BoxShadow(
                              color: _isGPressed
                                  ? Colors.white10.withOpacity(0.1)
                                  : Colors.black12.withOpacity(0.5),
                              blurRadius: 100.0,
                              spreadRadius: 0,
                            )
                          ]),
                      height: 150,
                      width: 150,
                      child: const Center(
                        child: Text(
                          'GLASSMORPHIC BUTTON',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
