
import 'package:envo_munish/ui/request_cancel.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 415,
                height: 85,
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                  color: appBarColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                      color: greytxt,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        color: borderblack,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: bgColor,
                          size: 25,
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    const Text('HISTORY',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),

              SizedBox(height: 3.h,),
              Container(
                padding: EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('All',style: txtStyleN,),
                        Icon(Icons.filter_list_outlined),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Get.to(()=> RequestCancel());
                      },
                      child: SizedBox(
                        height: 100,
                        child: Card(
                          elevation: 5,
                          child:  Row(
                            children: [
                              SizedBox(
                                width: 2.w,
                              ),
                              CircleAvatar(
                                radius: 25,
                                child: Image.asset('assets/images/driver.png',fit: BoxFit.fill,),),

                              SizedBox(
                                width: 2.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('New Delhi ----- Noida',style: titleTxtStyle,),
                                  Text('Tue,20/12/2021,04:00 PM',style: txtStyleG,),
                                  Text('Load Total Amount: ₹ xxx.xx',style: txtStyleG,),

                                ],
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Container(
                                  height: 35 ,
                                  width: 80 ,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                      color: Colors.redAccent
                                  ),
                                  child: const Text('Cancelled',style:  TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h,),

                    SizedBox(
                      height: 100,
                      child: Card(
                        elevation: 5,
                        child:  Row(
                          children: [
                            SizedBox(
                              width: 2.w,
                            ),
                            CircleAvatar(
                              radius: 25,
                              child: Image.asset('assets/images/driver.png',fit: BoxFit.fill,),),

                            SizedBox(
                              width: 2.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('New Delhi ----- Noida',style: titleTxtStyle,),
                                Text('Tue,20/12/2021,04:00 PM',style: txtStyleG,),
                                Text('Load Total Amount: ₹ xxx.xx',style: txtStyleG,),

                              ],
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,color: borderblack,size: 25,)
                          ],
                        ),
                      ),
                    ),





                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
