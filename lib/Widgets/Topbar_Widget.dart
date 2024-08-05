import 'package:flutter/material.dart';
import 'package:voya/Utils/Color.dart';


class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Center(
         child: Text('Voya',
          style: topbar,) ,) ,
    );
  }
}

TextStyle topbar = TextStyle(
  color: Colors.black,
  fontSize: 50.0,
  fontFamily: 'AlexB',
  shadows: [
    Shadow(
      offset: Offset(2.0, 2.0),
      blurRadius: 3.0,
      color: Colors.black.withOpacity(0.5),

    ),
  ],
);