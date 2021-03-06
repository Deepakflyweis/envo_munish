
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyVehicle extends StatefulWidget {
  const MyVehicle({Key? key}) : super(key: key);

  @override
  State<MyVehicle> createState() => _MyVehicleState();
}

class _MyVehicleState extends State<MyVehicle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
       body: Center(
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
                   const Text('MY VEHICLE',
                       style: TextStyle(
                         fontSize: 20.0,
                         color: Colors.white,
                         fontWeight: FontWeight.w500,
                       )),
                 ],
               ),
             ),
             Divider(thickness: 1,color: bgColor,),

             Text('No Vehicle Added yet',style: txtStyleN,),

             SizedBox(height: 10.h,),
             Image.asset('assets/images/car.png',height: 80,fit: BoxFit.fitHeight,),
             SizedBox(height: 5.h,),

             GestureDetector(
               onTap: (){},
               child: Container(
                 height: 45 ,
                 width: 170 ,
                 alignment: Alignment.center,
                 decoration: const BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(100.0)),
                     color: appBarColor
                 ),
                 child: const Text('Add Vehicle', style: TextStyle(
                   fontSize: 16.0,
                   color: bgColor,
                   fontWeight: FontWeight.bold,),),
               ),
             ),



           ],
         ),
       ),
    ));
  }
}
