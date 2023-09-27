import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final Size size;
  final String hintText;
  final IconData iconData;
  final bool isPassword;
  const RoundTextField({
    Key? key,
    required this.size, required this.hintText,
    required this.iconData, this.isPassword = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow:[
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurRadius: 10,
                offset: const Offset(0, 10)
            )
          ],
          color: Colors.white
      ),
      child: TextField(
        obscureText: isPassword?  true : false,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              icon: Icon(iconData, color: Colors.grey,)
          )),
    );
  }
}
