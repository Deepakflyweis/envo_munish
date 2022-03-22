
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
                        width: 5.w,
                      ),
                      GestureDetector(
                        onTap: (){
                          // Get.toNamed('/loginScreen');
                        },
                        child: Image.asset('assets/images/menu.png',height: 30,width: 30,fit: BoxFit.fill,),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Text('PICK & DROP ',style: headingTxtStyle,),
                      SizedBox(
                        width: 20.w,
                      ),
                      IconButton(
                          onPressed: (){
                            // Get.toNamed('/notifications');
                          },
                          icon: Icon(Icons.notifications, color: bgColor,size: 25,)),
                    ],
                  ),
                ),

                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: bgColor,
                  ),
                  child: Column(
                    children: [
                      Center()
                    ],
                  ),
                )
              ],
            ),
          ) ,));
  }
}
