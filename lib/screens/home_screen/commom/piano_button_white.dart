import 'package:flutter/material.dart';

class PianoButtonWhite extends StatelessWidget {
  final Function keyPressed;

  const PianoButtonWhite({Key key, @required this.keyPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .55,
      child: Expanded(
          flex: 1,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                child: Container(
                    width: 39,
                    height: double.infinity,
                    child: RaisedButton(
                      onPressed: keyPressed,
                    )),
              ),
            ],
          )),
    );
  }
}
