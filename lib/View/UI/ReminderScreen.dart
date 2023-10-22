import 'package:flutter/material.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';
import 'package:nearblood/Constant/DonorList/DropScreen.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

import '../../Constant/CustomAppbar.dart';
import '../../Constant/FloatingButton.dart';
import '../../Constant/Reminders/CustomContainer.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36, left: 21, bottom: 60),
              child: CustomTextWithIcon(
                icon: Icons.keyboard_arrow_left,
                iconSize: 42,
                iconColor: Heading1,
                text: 'Reminders',
                subtitle: '30 in your list',
              ),
            ),
            DonorPointer(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('All Blood Donors',style: TextStyle(color: Heading1,fontSize: 13,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 19,),
                  CustomContainerReminder(
                    text1: 'Last Donation',
                    text2: '23-04-2020',
                    text3: 'Last Donation',
                    text4: '23-04-2020',
                    text5: 'AB+',
                  ),
                  CustomContainerReminder(
                    text1: 'Last Donation',
                    text2: '23-04-2020',
                    text3: 'Last Donation',
                    text4: '23-04-2020',
                    text5: 'AB+',
                  ),
                  CustomContainerReminder(
                    text1: 'Last Donation',
                    text2: '23-04-2020',
                    text3: 'Last Donation',
                    text4: '23-04-2020',
                    text5: 'AB+',
                  ),
                  CustomContainerReminder(
                    text1: 'Last Donation',
                    text2: '23-04-2020',
                    text3: 'Last Donation',
                    text4: '23-04-2020',
                    text5: 'AB+',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(onPressed: () {},),
    );
  }
}
