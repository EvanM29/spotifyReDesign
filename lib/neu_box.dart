import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(child: child),
      decoration: BoxDecoration(
          //color: Colors.grey[300],
          color: Color.fromARGB(255, 28, 46, 26), //dark mode
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            //dark
            BoxShadow(
              //color: Colors.grey.shade500,
              color: Colors.grey.shade900, //dark mode
              blurRadius: 15,
              offset: Offset(5, 5),
            ),

            //light
            BoxShadow(
              //color: Colors.white,
              color: Color.fromARGB(255, 43, 65, 46),
              blurRadius: 15,
              offset: Offset(-5, -5),
            ),
          ]),
    );
  }
}
