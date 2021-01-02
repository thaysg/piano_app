import 'package:flutter/material.dart';

class PianoButtonBlack extends StatelessWidget {
  final Function whitekeyPress;
  final Function blackKeyPress;

  const PianoButtonBlack(
      {Key key, @required this.whitekeyPress, @required this.blackKeyPress})
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
              Positioned(
                  left: -10,
                  child: Container(
                    width: 28.0,
                    height: 130.0,
                    child: RaisedButton(
                      onPressed: blackKeyPress,
                      color: Colors.black,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                child: Container(
                    width: MediaQuery.of(context).size.width * .062,
                    /* width: 39, */
                    height: double.infinity,
                    child: RaisedButton(onPressed: whitekeyPress)),
              ),
              Positioned(
                  left: -10,
                  child: Container(
                    width: 28.0,
                    height: 130.0,
                    child: RaisedButton(
                      onPressed: blackKeyPress,
                      color: Colors.black,
                    ),
                  ))
            ],
          )),
    );
  }
}
