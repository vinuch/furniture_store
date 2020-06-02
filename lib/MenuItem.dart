import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class MenuItem extends StatelessWidget {
  final String icon;
  const MenuItem({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 50.0,
        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
          padding: EdgeInsets.all(0.0),
          child: Ink(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50.0)),
            child: Container(
                padding: EdgeInsets.all(8.0),
                constraints: BoxConstraints(maxWidth: 50.0, minHeight: 20.0),
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  icon,
                  semanticsLabel: 'Acme Logo',
                  width: 50.0,
                )),
          ),
        ),
      ),
    );
  }
}