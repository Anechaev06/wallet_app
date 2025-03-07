import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const Mybutton({
    super.key,
    required this.iconImagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlue.shade50,
                blurRadius: 10,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(child: Image.asset(iconImagePath)),
        ),
        const SizedBox(height: 3),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[500],
          ),
        )
      ],
    );
  }
}
