
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CancelTrip extends StatefulWidget {
  const CancelTrip({Key? key}) : super(key: key);

  @override
  State<CancelTrip> createState() => _CancelTripState();
}

class _CancelTripState extends State<CancelTrip> {

  bool? valuefirst = false;


  final List locale = [
    {'name': 'Expected a shorter wait time.',  },
    {'name': 'Customer related issue',  },
    {'name': 'Customer was coughing / sick',  },
    {'name': 'Customer not wearing mask',  },
    {'name': 'Passenger limit exceeded ',  },

  ];


  buildTripDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('Why Cancel?',style: titleTxtStyle,),
            actions: [
              FlatButton(
                child: const Text('Back'),
                onPressed: () {
                  // Navigator.of(context).pop(ConfirmAction.Cancel);
                },
              ),
              FlatButton(
                child: const Text('Submit'),
                onPressed: () {
                  // Navigator.of(context).pop(ConfirmAction.Accept);
                },
              )
            ],
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(
                            color: Colors.white,
                            height: MediaQuery.of(context).size.height*0.04,
                            child: Text(locale[index]['name'])),
                        onTap: () {

                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              child: Image.asset('assets/images/location.png',fit: BoxFit.fitHeight,),
            ),
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Today, 5:00 PM',style: txtStyleN,),
                  ),
                  Divider(thickness: 1,color: borderblack,),
                  Text('Searching for Nearby Vehicles',style: txtStyleN,),

                  SizedBox(height: 3.h,),
                  Row(
                    children: [
                      Text('Car Mini',style: txtStyleN,),
                      Image.asset('assets/images/car.png')
                    ],
                  ),

                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Delivery Fee',style: txtStyleN,),
                      Text('₹132.00',style: txtStyleR,),

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

                  InkWell(
                    onTap: (){
                      buildTripDialog(context);
                    },
                    child: Container(
                      height: 6.h,
                      width: 100.w,
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                              color: Colors.black, width: 0.2.w),
                          color: bgColor),
                      child: Center(
                        child: Text(
                          "Cancel Trip",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10.h,),

                ],
              ),
            )

          ],
        ),
      ),
    ));
  }
}
