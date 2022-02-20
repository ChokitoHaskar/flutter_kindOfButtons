import 'package:flutter/material.dart';

class DefaultButtons extends StatelessWidget {
  const DefaultButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: const Text('TEXT BUTTON'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('ELEVATED BUTTON'),
        )
      ],
    );
  }
}
