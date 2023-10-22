import 'package:flutter/material.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

class CheckBoxWithText extends StatefulWidget {
  @override
  _CheckBoxWithTextState createState() => _CheckBoxWithTextState();
}

class _CheckBoxWithTextState extends State<CheckBoxWithText> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              isChecked = newValue ?? false;
            });
          },
          activeColor: BackColor, // Change the background color when checked
          checkColor: BtnLin2, // Change the check color
        ),
        Text(
          'Donors add by you',
          style: TextStyle(fontSize: 13.0,color: Heading1,fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

