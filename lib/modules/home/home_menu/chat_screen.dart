
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/home/home_menu/menu_home.dart';
import 'package:envo_munish/ui/notifications.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                      width: 35.w,
                    ),
                    Text('CHAT ',style: headingTxtStyle,),
                    SizedBox(
                      width: 27.w,
                    ),
                    IconButton(
                        onPressed: (){
                          Get.to(()=> Notifications());
                        },
                        icon: Icon(Icons.notifications, color: bgColor,size: 25,)),
                  ],
                ),
              ),
              
              Padding(
                  padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: bgColor,
                      child: CircleAvatar(
                        radius: 30,
                       child:  Image.asset('assets/images/profile.png'),
                      ),
                    ),
                    SizedBox(width: 2.w, ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jack Jordon', style: titleTxtStyle),
                        SizedBox(height: 1.h, ),
                        Text('Lorem Ipsum', style: txtStyleG)

                      ],
                    ),

                    // Obx(() => Text(
                    //   "12:00 P.M"
                    //   // DateFormat.jm().format( )
                    //   ,
                    //   style: TextStyle(
                    //       fontSize: 13.sp,
                    //        ),
                    // )),
                  ],
                ),

              ),
              const Divider(
                color: appBarColor,
              )

            ],
          ),),
        ));
  }
}
