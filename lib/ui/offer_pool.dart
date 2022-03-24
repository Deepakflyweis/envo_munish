
import 'package:envo_munish/modules/home/home_menu/menu_home.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';

import 'notifications.dart';

class OfferPool extends StatefulWidget {
  const OfferPool({Key? key}) : super(key: key);

  @override
  State<OfferPool> createState() => _OfferPoolState();
}

class _OfferPoolState extends State<OfferPool> {
  final _fromDest = TextEditingController();
  final  _toDest = TextEditingController();

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
                      Get.to(()=> HomeMenu());
                    },
                    child: Image.asset('assets/images/menu.png',height: 30,width: 30,fit: BoxFit.fill,),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Text('OFFER POOL',style: headingTxtStyle,),
                  SizedBox(
                    width: 20.w,
                  ),
                  IconButton(
                      onPressed: (){
                        Get.to(()=> Notifications());
                      },
                      icon: Icon(Icons.notifications, color: bgColor,size: 25,)),
                ],
              ),
            ),


            Container(
                width: 425 ,
                height: 300,
                child: Image.asset('assets/images/location.png', fit: BoxFit.fitHeight,)),


            // Container(
            //     height: 600,
            //     width: 380,
            //
            //     decoration: BoxDecoration(
            //         border: Border.all(width: 0.2.w,color: Colors.black12),
            //         color: borderblack,
            //         boxShadow: const [
            //           BoxShadow(
            //             offset: Offset(5, 5),
            //             blurRadius: 15,
            //             color:bckground,)
            //
            //         ],
            //         borderRadius:
            //         BorderRadius.all(Radius.circular(10))),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text("Offer Pool",style: txtStyleG,),
            //       Row(
            //         children: [
            //           Container(
            //
            //             decoration: BoxDecoration(
            //               color: bgColor,
            //               borderRadius: BorderRadius.circular(5.0),
            //               border: Border.all(width: 0.3, color: Colors.black54),
            //               boxShadow: <BoxShadow>[
            //                 BoxShadow(
            //                   blurRadius: 1.5,
            //                   spreadRadius: 1.5,
            //                   color: Colors.grey.shade200,
            //                 ),
            //               ],
            //             ),
            //             child: TextFormField(
            //               controller: _fromDest,
            //               keyboardType: TextInputType.text,
            //               validator: (value) {
            //                 if (value!.isEmpty) {
            //                   return 'Field can\'t be empty';
            //                 }
            //                 return null;
            //               },
            //               decoration: InputDecoration(
            //                 contentPadding: const EdgeInsets.all(12.0),
            //                 hintText: 'Delhi',
            //                 border: InputBorder.none,
            //               ),
            //             ),
            //           ),
            //           SizedBox(
            //             height: 2.h,
            //           ),
            //
            //           Container(
            //             decoration: BoxDecoration(
            //               color: borderblack,
            //               borderRadius: BorderRadius.circular(5.0),
            //               border: Border.all(width: 0.3, color: Colors.black54),
            //               boxShadow: <BoxShadow>[
            //                 BoxShadow(
            //                   blurRadius: 1.5,
            //                   spreadRadius: 1.5,
            //                   color: Colors.grey.shade200,
            //                 ),
            //               ],
            //             ),
            //             child: TextFormField(
            //               controller: _toDest,
            //               keyboardType: TextInputType.text,
            //               validator: (value) {
            //                 if (value!.isEmpty) {
            //                   return 'Field can\'t be empty';
            //                 }
            //                 return null;
            //               },
            //               decoration: InputDecoration(
            //                 contentPadding: const EdgeInsets.all(12.0),
            //                 hintText: 'Haryana',
            //                 border: InputBorder.none,
            //               ),
            //             ),
            //           ),
            //
            //         ],
            //       )
            //     ],
            //   ))
          ],
        ),
      ),
    ));
  }
}
