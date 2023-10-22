import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';

class DonorAppBar extends StatelessWidget implements PreferredSizeWidget {

  final double kToolBarHight = 60.0;
  @override
  Size get preferredSize => Size.fromHeight(kToolBarHight);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Define properties based on screen width
    double titleFontSize = screenWidth <= 320 ? 16.0 : 20.0;
    double subTitleFontSize = screenWidth <= 320 ? 12.0 : 13.0;
    double iconSize = screenWidth <= 320 ? 18.0 : 24.0;
    double iconPadding = screenWidth <= 320 ? 10.0 : 13.0;

    return Padding(
      padding: const EdgeInsets.only(right: 20,),
      child: AppBar(
        elevation: 0,
        backgroundColor: BackColor,
        leading: IconButton(
          icon: SvgPicture.asset('assets/DonorScreen/back.svg',height: iconSize,width: iconSize,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Blood Donors',
              style: TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold,color: HeadingDonor),
            ),
            Text(
              '30 in your city',
              style: TextStyle(fontSize: subTitleFontSize, color: Colors.grey.shade400),
            ),
          ],
        ),
        actions: [
          Material(
            elevation: 2,
            shape: CircleBorder(),
            child: Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: light1,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                  'assets/DonorScreen/filter.svg',
                  height: iconSize,
                  width: iconSize,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/SearchFilter');
                },
              ),
            ),
          ),
          SizedBox(width: iconPadding,),
          Material(
            elevation: 2,
            shape: CircleBorder(),
            child: Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: light2,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                  'assets/DonorScreen/near_by.svg',
                  height: iconSize,
                  width: iconSize,
                ),
                onPressed: () {
                  // Handle icon button press
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
