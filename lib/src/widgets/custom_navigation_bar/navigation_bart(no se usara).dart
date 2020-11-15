import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  Function onPressed;
  bool bottomIcons;
  String text;
  IconData icons;
  CustomNavigationBar(
      {@required this.onPressed,
      @required this.bottomIcons,
      @required this.icons,
      @required this.text});

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      child: GestureDetector(
          onTap: widget.onPressed,
          child: widget.bottomIcons == true
              ? Container(
                  // color: Colors.blue,
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade100.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        widget.icons,
                        color: Colors.indigo,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.text,
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                )
              : Icon(widget.icons)),
    );
  }
}
