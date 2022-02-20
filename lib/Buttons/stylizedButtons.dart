import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StylizedButtons extends StatefulWidget {
  const StylizedButtons({Key? key}) : super(key: key);

  @override
  State<StylizedButtons> createState() => _StylizedButtonsState();
}

class _StylizedButtonsState extends State<StylizedButtons> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          color: Colors.grey[300],
          child: Center(
            child: InkWell(
              //Can use GestureDetector if you wanted more control
              onTap: () {
                setState(() {
                  _isPressed = !_isPressed;
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
                      spreadRadius: _isPressed ? 2 : 0,
                      blurRadius: _isPressed ? 5 : 0,
                      offset: _isPressed ? Offset(5, 5) : Offset(0, 0),
                    ),
                    BoxShadow(
                      color: Colors.white60,
                      spreadRadius: 0,
                      blurRadius: _isPressed ? 5 : 0,
                      offset: _isPressed ? Offset(-5, -5) : Offset(0, 0),
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
      ],
    );
  }
}
