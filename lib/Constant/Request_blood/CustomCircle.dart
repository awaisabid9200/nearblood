
import 'package:flutter/cupertino.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

import '../DonorList/DonorColors.dart';

class CustomCircle extends StatelessWidget {
  final IconData iconData;

  CustomCircle({ required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      decoration: BoxDecoration(
      shape: BoxShape.circle,
        border: Border.all(color:Heading2,width: 1),
      ),
      child: Icon(iconData),
    );
  }
}
