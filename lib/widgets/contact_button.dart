import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  final  void Function ()? onpressed;
  const ContactButton({
    Key? key,
    required this.buttonText,
    required this.icon,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          textStyle: TextStyle(
            color: Colors.black12,
          ),
          backgroundColor: Colors.amberAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: onpressed,
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: icon,
        ),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$buttonText",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
