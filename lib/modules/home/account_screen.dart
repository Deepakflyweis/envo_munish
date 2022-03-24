
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/home/home_menu/menu_home.dart';
import 'package:envo_munish/ui/notifications.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [

                Container(
                  color: appBarColor,
                  height: 70 ,
                  width: 415 ,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 2.w,
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(()=> HomeMenu());
                        },
                        child: Image.asset('assets/images/menu.png',height: 30,width: 30,fit: BoxFit.fill,),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Text('ACCOUNT ',style: headingTxtStyle,),
                      SizedBox(
                        width: 25.w,
                      ),
                      IconButton(
                          onPressed: (){
                            Get.to(()=> Notifications());
                          },
                          icon: Icon(Icons.notifications, color: bgColor,size: 25,)),
                    ],
                  ),
                ),

                SizedBox(
                  height: 4.h,
                ),

                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundColor: bgColor,
                          radius: 50,
                          child: Image.asset('assets/images/profile.png'),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Center(
                         child: Text('Alex +91 9876543210',style: txtStyleN,),
                      ),

                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text('Username',style: txtStyleN,),
                           Text('xyz@gmail.com',style: txtStyleN,),
                       ],
                      ),

                      SizedBox(
                        height: 4.h,
                      ),

                     // Profile Verfication
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 20,
                              child: Image.asset(
                                'assets/images/pverify.png',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('Profile Verfication', style: txtStyleN)
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 4.h,
                      ),

                     // Payments
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 20,
                              child: Image.asset(
                                'assets/images/pays.png',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('Payments', style: txtStyleN)
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 4.h,
                      ),

                     // Refer & Earn
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 20,
                              child: Image.asset(
                                'assets/images/r_n_e.png',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('Refer & Earn', style: txtStyleN)
                          ],
                        ),
                      ),


                      SizedBox(
                        height: 4.h,
                      ),

                     // Offers
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 20,
                              child: Image.asset(
                                'assets/images/offer.png',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('Offers', style: txtStyleN)
                          ],
                        ),
                      ),


                      SizedBox(
                        height: 4.h,
                      ),

                     // Setting
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 20,
                              child: Image.asset(
                                'assets/images/setting.png',color: Colors.black,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('Settings', style: txtStyleN)
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 4.h,
                      ),

                     // Logout
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 20,
                              child: Image.asset(
                                'assets/images/setting.png',color: Colors.black,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('Logout', style: txtStyleN)
                          ],
                        ),
                      ),


                    ],
                  ),
                )
              ],
            ),
          ) ,));
  }
}
