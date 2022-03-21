
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PaymentLink extends StatefulWidget {
  const PaymentLink({Key? key}) : super(key: key);

  @override
  State<PaymentLink> createState() => _PaymentLinkState();
}

class _PaymentLinkState extends State<PaymentLink> {
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
                    GestureDetector(
                      onTap: (){},
                      child: Image.asset('assets/images/menu.png',height: 30,width: 30,fit: BoxFit.fill,),
                    ),
                   SizedBox(
                     width: 30.w,
                   ),
                   Text('PAYMENT ',style: headingTxtStyle,),
                   SizedBox(
                     width: 25.w,
                   ),
                   IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.notifications, color: bgColor,size: 25,)),
                 ],
               ),
             ),


             SizedBox(
               height: 3.h,
             ),


             //link paytm
             Container(
               height: 80 ,
               width: 340 ,
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
                     child: Image.asset('assets/images/paytm.png',fit: BoxFit.fill,),),

                   SizedBox(
                     width: 3.w,
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('PAYTM Wallet',style: titleTxtStyle,),
                       Text(
                         'Link your Paytm wallet ',
                         style: TextStyle(fontSize: 14,color: Colors.black),),

                       Text(
                         'and grab rewards',
                         style: TextStyle(fontSize: 14,color: Colors.black),),
                      ]
                   ),
                   SizedBox(
                     width: 10.w,
                   ),

                   GestureDetector(
                     onTap: (){},
                     child: Container(
                       height: 20 ,
                       width: 40 ,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(25.0)),
                         border: Border.all(color: Colors.amber,width: 1.0)
                       ),
                       child: Text('Link',style: TextStyle(color: Colors.amber ),),
                     ),
                   ),
                 ],
               ),
             ),

             SizedBox(
               height: 5.h,
             ),

             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(25),
                   topRight: Radius.circular(25),
                 ),
                 color: bgColor,

               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox(
                     height: 3.h,
                   ),
                   Text('History',style: titleTxtStyle,),

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

             )


           ],
         ),
       ),
      ),
    );
  }
}
