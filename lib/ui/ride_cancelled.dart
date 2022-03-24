
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RideCancelled extends StatefulWidget {
  const RideCancelled({Key? key}) : super(key: key);

  @override
  State<RideCancelled> createState() => _RideCancelledState();
}

class _RideCancelledState extends State<RideCancelled> {
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
                      Column(
                        children: [
                          Text('Today, 5:00 PM',style: txtStyleN,),
                          Text('Searching for Nearby Vehicles',style: txtStyleN,),
                        ],
                      ),
                      Text('₹xxx.xxs',style: txtStyleS,),
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Divider(thickness: 1,color: borderblack,),

                  SizedBox(height: 2.h,),

                 //Present Address
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
                        hintText: 'Present Address',

                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 2.h,),

                  // Reciever's Address
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
                        hintText: "Reciever's Address",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ride Cancelled !',style: txtStyleR,),
                      Image.asset('assets/images/sad.png',height: 45,fit: BoxFit.fitHeight,)
                    ],
                  ),

                  SizedBox(height: 3.h,),

                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: 35,
                      width: 110,
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                              color: appBarColor, width: 1.0),
                          color: bgColor),
                      child: Center(
                        child: Text(
                          "Book Again",
                          style: TextStyle(
                              color: appBarColor,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 2.h,),

                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings_backup_restore,size: 14,),
                        Text('Back to home',style: txtStyleS,),
                      ],
                    ),
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
