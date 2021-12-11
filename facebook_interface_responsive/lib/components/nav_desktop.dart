import 'package:flutter/material.dart';


class NavDesktop extends StatelessWidget {
  const NavDesktop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0,2),
            blurRadius: 4,
          )
        ]
      ),
      
    );
  }
}