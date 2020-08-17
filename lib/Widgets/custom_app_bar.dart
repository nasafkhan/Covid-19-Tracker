import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF473F97),
      elevation: 0.0,
      leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          iconSize: 28.0,
          onPressed: () {}),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            iconSize: 28.0,
            onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
