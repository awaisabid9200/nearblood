import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';
import 'package:nearblood/Constant/MainScreen/MainScreenColor.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';
import '../../Constant/CustomAppbar.dart';
import '../../Constant/CustomButton.dart';
import '../../Constant/DonorList/DropScreen.dart';
import '../../Constant/Request_blood/CustomCircle.dart';
import '../../Constant/Request_blood/CustomTextView.dart';

class BloodRequest extends StatefulWidget {
  const BloodRequest({super.key});

  @override
  State<BloodRequest> createState() => _BloodRequestState();
}

class _BloodRequestState extends State<BloodRequest> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double buttonTextFontSize = 14.0;
    double buttonWidth = 326.0;
    double iconSize = 32.0;

    if (screenWidth <= 320) {

      buttonTextFontSize = 12.0;
      buttonWidth = 280.0;
      iconSize = 24.0;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  CustomTextWithIcon(
                    text: 'Add Blood Request',
                    icon: Icons.close,
                    iconColor: Heading1,
                    iconSize: iconSize,
                    subtitle: 'add the details of requester',
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  CustomTextField(
                    hintText: 'Full Name',
                    Svgimag: 'assets/BloodRequest/person.svg',
                    controller: TextEditingController(),
                    height: 22.36,
                    width: 19.22,
                  ),
                  Stack(
                    children: [
                      CustomTextField(
                        hintText: '',
                        Svgimag: 'assets/BloodRequest/smartphone.svg',
                        controller: TextEditingController(),
                        height: 26.79,
                        width: 17.49,
                      ),
                      Positioned(
                        top: 12,
                        left: 55,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/ProfileAssets/Arabic.svg',
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'EG +20',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.arrow_drop_down_outlined),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 67,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [BtnLin1, BtnLin2],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Verify',
                            style: TextStyle(
                              fontSize: buttonTextFontSize,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    hintText: 'Hospital',
                    Svgimag: 'assets/BloodRequest/hospital (2).svg',
                    controller: TextEditingController(),
                    height: 23.79,
                    width: 20.43,
                  ),
                  CustomTextField(
                    hintText: 'Country',
                    Svgimag: 'assets/BloodRequest/country.svg',
                    controller: TextEditingController(),
                    height: 21.96,
                    width: 17.22,
                  ),
                  CustomTextField(
                    hintText: 'State',
                    Svgimag: 'assets/BloodRequest/state.svg',
                    controller: TextEditingController(),
                    height: 26.96,
                    width: 24.59,
                  ),
                  CustomTextField(
                    hintText: 'City',
                    Svgimag: 'assets/BloodRequest/city.svg',
                    controller: TextEditingController(),
                    height: 28.88,
                    width: 23.44,
                  ),
                  CustomTextField(
                    hintText: 'Date of Birth',
                    Svgimag: 'assets/BloodRequest/date.svg',
                    controller: TextEditingController(),
                    height: 23.55,
                    width: 23.55,
                  ),
                  CustomTextField(
                    hintText: 'Your Message',
                    Svgimag: 'assets/BloodRequest/message.svg',
                    controller: TextEditingController(),
                    height: 24.83,
                    width: 24.83,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomCircle(
                        iconData: Icons.add,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/BloodRequest/blood-transfusion.svg',
                          ),
                          Text(
                            '2',
                            style: TextStyle(
                              fontSize: 30, // Adjust the font size as needed
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      CustomCircle(
                        iconData: Icons.add,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: DonorPointer(),
            ),
            SizedBox(
              height: 59,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CustomGradientButton(
                text: 'Add Request',
                iconData: Icons.add,
                onPressed: () {},
                height: 53,
                weight: buttonWidth,
              ),
            ),
            SizedBox(
              height: 53,
            ),
          ],
        ),
      ),
    );
  }
}
