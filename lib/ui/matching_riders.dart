
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MatchingRider extends StatefulWidget {
  const MatchingRider({Key? key}) : super(key: key);

  @override
  State<MatchingRider> createState() => _MatchingRiderState();
}

class _MatchingRiderState extends State<MatchingRider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bckground,
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
                      width: 3.w,
                    ),
                    IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios, color: bgColor,size: 25,)),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text('MATCHING RIDERS ',style: headingTxtStyle,)
                  ],
                ),
              ),

              SizedBox(
                height: 5.h,
              ),

              Container(
                height: 110 ,
                width: 380 ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: bgColor,
                     border: Border.all(color: greytxt,width: 1),
                     boxShadow: const [
                    BoxShadow(
                    offset: Offset(5, 5),
                  blurRadius: 15,
                  color:bckground,)]
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 2.w,
                    ),
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/driver.png',fit: BoxFit.fill,),),

                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Rarthasaethi',style: titleTxtStyle,),
                        Text('Delhi',style: txtStyleG,),
                        Text('Haryana',style: txtStyleG,),
                        Row(
                          children: [
                            Text('Time  Ratings  Total Price  Vehicle',style: txtStyleS,),
                          ],
                        ),
                        Row(
                          children: [
                            Text('5:15 PM  5.0  250/-  SUV',style: txtStyleS,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 40 ,
                      width: 80 ,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14.0)),
                           color: btnBColor
                           ),
                      child: Text('Requested',style: btntxtStyle,),
                      ),
                  ],
                ),
              ),

              SizedBox(
                height: 3.h,
              ),

              Container(
                height: 110 ,
                width: 380 ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: bgColor,
                     border: Border.all(color: greytxt,width: 1),
                     boxShadow: const [
                    BoxShadow(
                    offset: Offset(5, 5),
                  blurRadius: 15,
                  color:bckground,)]
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 2.w,
                    ),
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/driver.png',fit: BoxFit.fill,),),

                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Rakesh',style: titleTxtStyle,),
                        Text('Delhi',style: txtStyleG,),
                        Text('Haryana',style: txtStyleG,),
                        Row(
                          children: [
                            Text('Time  Ratings  Total Price  Vehicle',style: txtStyleS,),
                          ],
                        ),
                        Row(
                          children: [
                            Text('5:15 PM  5.0  250/-  SUV',style: txtStyleS,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 40 ,
                      width: 80 ,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14.0)),
                           color: greenbutton
                           ),
                      child: Text('Request',style: btntxtStyle,),
                      ),




                  ],
                ),
              ),


              SizedBox(
                height: 3.h,
              ),

              Container(
                height: 110 ,
                width: 380 ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: bgColor,
                    border: Border.all(color: greytxt,width: 1),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 15,
                        color:bckground,)]
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 2.w,
                    ),
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/driver.png',fit: BoxFit.fill,),),

                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Rohit',style: titleTxtStyle,),
                        Text('Delhi',style: txtStyleG,),
                        Text('Haryana',style: txtStyleG,),
                        Row(
                          children: [
                            Text('Time  Ratings  Total Price  Vehicle',style: txtStyleS,),
                          ],
                        ),
                        Row(
                          children: [
                            Text('5:15 PM  5.0  250/-  SUV',style: txtStyleS,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 40 ,
                      width: 80 ,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14.0)),
                          color: greenbutton
                      ),
                      child: Text('Request',style: btntxtStyle,),
                    ),




                  ],
                ),
              ),

              SizedBox(
                height: 3.h,
              ),

              Container(
                height: 110 ,
                width: 380 ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: bgColor,
                    border: Border.all(color: greytxt,width: 1),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 15,
                        color:bckground,)]
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 2.w,
                    ),
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/driver.png',fit: BoxFit.fill,),),

                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Vinay',style: titleTxtStyle,),
                        Text('Delhi',style: txtStyleG,),
                        Text('Haryana',style: txtStyleG,),
                        Row(
                          children: [
                            Text('Time  Ratings  Total Price  Vehicle',style: txtStyleS,),
                          ],
                        ),
                        Row(
                          children: [
                            Text('5:15 PM  5.0  250/-  SUV',style: txtStyleS,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 40 ,
                      width: 80 ,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14.0)),
                          color: greenbutton
                      ),
                      child: Text('Request',style: btntxtStyle,),
                    ),




                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
