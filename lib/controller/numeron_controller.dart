import 'package:flutter/material.dart';

class CheckButton extends StatefulWidget {
  final String text;

  const CheckButton(this.text, {Key? key}) : super(key: key);

  @override
  _CheckButtonState createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckButton> {
  bool isExist = true; // Initial color state

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExist = !isExist;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: isExist ? Colors.white : Colors.grey,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            widget.text,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
