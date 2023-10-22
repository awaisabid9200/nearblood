import 'package:flutter/material.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';
import 'package:nearblood/Constant/Reminders/CustomSwitch.dart';
import '../../Constant/CustomAppbar.dart';
import '../../Constant/CustomBtnSimple.dart';
import '../../Constant/DonorList/DropScreen.dart';
import '../../Constant/Reminders/CustomTextsIcon.dart';


class AddReminder extends StatefulWidget {
  const AddReminder({Key? key}) : super(key: key);

  @override
  State<AddReminder> createState() => _AddReminderState();
}

class _AddReminderState extends State<AddReminder> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomTextWithIcon(
                  text: 'Add Reminder',
                  iconSize: screenWidth <= 400 ? 36 : 42,
                  subtitle: '',
                  iconColor: Heading1,
                  icon: Icons.keyboard_arrow_left,
                ),
                SizedBox(
                  height: 56,
                ),
                DonorPointer(),
                SizedBox(
                  height: 84,
                ),
                CustomTextIcon(
                  svgImage: 'assets/ProfileAssets/location.svg',
                  text1: 'Last Donation Date',
                  text2: '23-04-2020',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextIcon(
                  svgImage: 'assets/ProfileAssets/location.svg',
                  text1: 'Last Donation Date',
                  text2: '23-04-2020',
                ),
                SizedBox(
                  height: screenWidth <= 400 ? 20 : 34,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Do you want to set reminder \nin your calendar ?',
                        style: TextStyle(
                            color: Heading1,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth <= 400 ? 11 : 13)),
                    CustomSwitch(),
                  ],
                ),
                SizedBox(
                  height: screenWidth <= 400 ? 30 : 46,
                ),
                CustomBtnSimple(
                  text: 'Submit',
                  onPressed: () {},
                ),
                SizedBox(
                  height: screenWidth <= 400 ? 28 : 43,
                ),
                Text(
                  'Remember Me',
                  style: TextStyle(
                      color: BtnLin1, // Customize the link text color
                      decoration: TextDecoration.underline, // Underline the text
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                    'By setting reminder your contact information \nwill not show in donor list for next 3 months.',
                    style: TextStyle(
                        color: Heading1,
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth <= 400 ? 11 : 13)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


