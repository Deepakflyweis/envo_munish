import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RiderAssigned extends StatefulWidget {
  const RiderAssigned({Key? key}) : super(key: key);

  @override
  State<RiderAssigned> createState() => _RiderAssignedState();
}

class _RiderAssignedState extends State<RiderAssigned> {
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
                          width: 15.w,
                        ),
                        const Text('RIDE GIVER ASSIGNED',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  ),

                      Container(
                        height: 400,
                        child: Image.asset('assets/images/location.png',fit: BoxFit.fitHeight,),
                      ),

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(height: 3.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            InkWell(
                              onTap: (){

                              },
                              child: Container(
                                height: 45,
                                width: 170,
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
                                      'Call Ride Giver',
                                      style: TextStyle(
                                          color: bgColor,
                                          fontSize: 10.sp,
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
                                width: 170,
                                decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                    border: Border.all(
                                        color: redbtn, width: 1.0),
                                    color: appBarColor),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/cross.png',width: 25,),
                                    Text(
                                      'Chat with Ride Giver',
                                      style: TextStyle(
                                          color: bgColor,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 3.h,),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Delievery vehicle details',style: txtStyleN,)),

                        SizedBox(height: 3.h,),
                        Row(
                          children: [
                            Text('WagonR',style: txtStyleN,),
                            Image.asset('assets/images/car.png',width: 80,),
                            Column(
                              children: [
                                Text('12 min',style: txtStyleN,),
                                Text('₹ xxxx',style: txtStyleN,),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 3.h,),
                        Row (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Car Number',style: txtStyleN,),
                            Text('HR XY 0009',style: txtStyleR,),

                          ],
                        ),
                        SizedBox(height: 2.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Pickup Contact',style: txtStyleN,),
                            Text('0987654321-Username',style: txtStyleR,),

                          ],
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
                                width: 175,
                                decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(2)),
                                    border: Border.all(
                                        color: borderblack, width: 1.0),color: bgColor,
                                    boxShadow:   const <BoxShadow>[
                                      BoxShadow(
                                        blurRadius: 1.0,
                                        spreadRadius:1.0,
                                        color:  Colors.grey,
                                      ),]
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text(
                                      'Cancel Trip',
                                      style: TextStyle(
                                          color: appBarColor,
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Image.asset('assets/images/cross.png',color: appBarColor,width: 25, ),

                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){

                              },
                              child: Container(
                                height: 45,
                                width: 175,
                                decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(2)),
                                    border: Border.all(
                                        color: bgColor, width: 1.0),color: appBarColor,
                                    boxShadow: const <BoxShadow>[
                                      BoxShadow(
                                        blurRadius: 1.0,
                                        spreadRadius:1.0,
                                        color:  Colors.grey,
                                      ),]
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text(
                                      'Track Your Ride',
                                      style: TextStyle(
                                          color: bgColor,
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Image.asset('assets/images/nav.png',color: bgColor,width: 20, ),

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

              ])
            )
        )
    );
  }
}
