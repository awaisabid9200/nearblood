import 'package:flutter/material.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

class CustomSwitch extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CustomSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Box1,
            activeColor: BtnLin2,
            inactiveTrackColor: Colors.black12,
            inactiveThumbColor: Heading2,
          ),
    );
  }
}