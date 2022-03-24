

import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/home/carpool/carpool_screen.dart';
import 'package:envo_munish/modules/home/home_menu/chat_screen.dart';
import 'package:envo_munish/modules/login/login_screen.dart';
import 'package:envo_munish/ui/help_support.dart';
import 'package:envo_munish/ui/history_screen.dart';
import 'package:envo_munish/ui/my_rides.dart';
import 'package:envo_munish/ui/my_vehicle.dart';
import 'package:envo_munish/ui/payment_link.dart';
import 'package:envo_munish/ui/refer_earn.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../account_screen.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
            color: borderblack,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close_rounded,
              color: appBarColor,
              size: 35,
            )),
        title: Center(
          child: Image.asset(
            "assets/images/logo.png",
            width: 75,
            height: 45,
          ),
        ),
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            SizedBox(
              height: 2.h,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 140,
              width: 435,
              decoration: const BoxDecoration(
                color: bgColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(
                      1.0,
                      1.0,
                    ),
                    color: Colors.grey,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/user.png',
                    width: 75,
                    height: 75,
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Username', style: titleTxtStyle),
                      Text('abc@gmail.com', style: txtStyleN),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text('Manage Profile', style: txtStyleR),
                    ],
                  ),
                  IconButton(
                      color: borderblack,
                      onPressed: () {
                        Get.to(()=> AccountScreen());
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: appBarColor,
                        size: 20,
                      )),
                ],
              ),
            ),

            SizedBox(
              height: 4.h,
            ),

            //Post Ride
            GestureDetector(
              onTap: () {
                Get.to(()=> CarpoolScreen());
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/postride.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Post Ride', style: titleTxtStyle)
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),

            //My Rides
            GestureDetector(
              onTap: () {
                Get.to(()=> MyRides());
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/rides.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('My Rides', style: titleTxtStyle)
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),

            //payment
            GestureDetector(
              onTap: () {
                Get.to(()=> PaymentLink());
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/payment.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Payment', style: titleTxtStyle)
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),

            //my vehicle
            GestureDetector(
              onTap: () {
                Get.to(()=> MyVehicle());
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/vehicle.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('My Vehicle', style: titleTxtStyle)
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),

            //rides history
            GestureDetector(
              onTap: () {
                Get.to(()=> HistoryScreen());
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/rideshistory.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Rides History', style: titleTxtStyle)
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),

            //help & support
            GestureDetector(
              onTap: () {
                Get.to(()=> HelpnSupport());
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/support.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Help & Support', style: titleTxtStyle)
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),

            //Chat
            GestureDetector(
              onTap: () {
                Get.to(()=> ChatScreen());
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/chat.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Chat', style: titleTxtStyle)
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),

            //Settings
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/setting.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Settings', style: titleTxtStyle)
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),

            //Refer & Rewards
            GestureDetector(
              onTap: () {
                Get.to(()=> RefernEarn());
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/refer.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Refer & Rewards', style: titleTxtStyle)
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),

            //Logout
            GestureDetector(
              onTap: () {
                Get.to(()=> LoginScreen());
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/logout.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Logout', style: titleTxtStyle)
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),
          ]),
        ),
      ),
    ));
  }
}
