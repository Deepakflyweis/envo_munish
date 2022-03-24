
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BackToHome extends StatefulWidget {
  const BackToHome({Key? key}) : super(key: key);

  @override
  State<BackToHome> createState() => _BackToHomeState();
}

class _BackToHomeState extends State<BackToHome> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              child: Image.asset('assets/images/location.png',fit: BoxFit.fitHeight,),
            ),
            SizedBox(height: 3.h,),
            Container(
              padding: EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today, 5:00 PM',style: txtStyleN,),
                      Text('Trip_id: xyz0123456789',style: txtStyleS,),
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Divider(thickness: 1,color: borderblack,),

                  SizedBox(height: 2.h,),

                  //Pick Up Address
                  Container(
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(width: 0.3, color: borderblack),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          blurRadius: 0.5,
                          spreadRadius: 0.5,
                          color:  borderblack,
                        ),
                      ],
                    ),
                    child: TextFormField(

                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(12.0),
                        hintText: 'Pick Up Address',

                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 3.h,),

                  // Drop Address
                  Container(

                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(width: 0.3, color: borderblack),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          blurRadius: 0.5,
                          spreadRadius: 0.5,
                          color:  borderblack,
                        ),
                      ],
                    ),
                    child: TextFormField(

                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(12.0),
                        hintText: "Drop Address ",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: 45,
                          width: 160,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: appBarColor, width: 1.0),
                              color: greenbutton),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/nav.png',width: 25,),
                              Text(
                                'Track Your Ride',
                                style: TextStyle(
                                    color: bgColor,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: 45,
                          width: 160,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              border: Border.all(
                                  color: redbtn, width: 1.0),
                              color: redbtn),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/cross.png',width: 25,),
                              Text(
                                'Cancel Ride',
                                style: TextStyle(
                                    color: bgColor,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),



                  SizedBox(height: 5.h,),

                ],
              ),
            )

          ],
        ),
      ),
    ));
  }
}
