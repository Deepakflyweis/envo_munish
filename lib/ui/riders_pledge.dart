
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/cupertino.dart';

 class RidersPledge extends StatefulWidget {
   const RidersPledge({Key? key}) : super(key: key);

  @override
  State<RidersPledge> createState() => _RidersPledgeState();
}

class _RidersPledgeState extends State<RidersPledge> {
   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         body: Padding(
           padding:   EdgeInsets.all(15.0),
           child: Column(
             children: [

               SizedBox(
                 height: 1.h,
               ),

                 const Align(
                   alignment: Alignment.topLeft,
                   child: Text( "Rider's Pledge",style:  TextStyle(
               fontSize: 20.0,
               color: Colors.black87,
               fontWeight: FontWeight.bold,)),
                 ),

               SizedBox(
                 height: 5.h,
               ),

               Row(
                 children: [

                   Container(
                     width: 110,
                     height: 75,
                     child: Image.asset('assets/images/respect.png',
                       fit: BoxFit.fitHeight,),
                   ),

                   SizedBox(
                     width: 1.w,
                   ),
                   Column(

                     children: [
                       Text('Respect Each Other',style: titleTxtStyle,),
                       // Text("Lorem Ipsum is simply dummy "
                       //     "text of the printing and typesetting industry. "
                       //     "Lorem ipsum has beenthe industry's"
                       //     " standard dummy text ever"
                       //     " since the 1500.",
                       //   style: txtStyleG,),


                     ],
                   ),





                 ],
               ),
               SizedBox(
                 height: 3.h,
               ),

               Row(
                 children: [

                   Container(
                     width: 110,
                     height: 75,
                     child: Image.asset('assets/images/car.png',
                       fit: BoxFit.fitHeight,),
                   ),

                   SizedBox(
                     width: 1.w,
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('Be Environment Friendly',style: titleTxtStyle,),
                       // Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has beenthe industry's standard dummy text ever since the 1500.",
                       //   style: txtStyleG,),
                     ],
                   ),
                 ],
               ),
               SizedBox(
                 height: 3.h,
               ),

               Row(
                 children: [

                   Container(
                     width: 110,
                     height: 75,
                     child: Image.asset('assets/images/unity.png',
                       fit: BoxFit.fitHeight,),
                   ),

                   SizedBox(
                     width: 1.w,
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('Spread Goodness',style: titleTxtStyle,),
                       // Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has beenthe industry's standard dummy text ever since the 1500.",
                       //   style: txtStyleG,),


                     ],
                   ),


                 ],
               ),
               SizedBox(
                 height: 3.h,
               ),

               Row(
                 children: [

                   Container(
                     width: 110,
                     height: 75,
                     child: Image.asset('assets/images/mask.png',
                       fit: BoxFit.fitHeight,),
                   ),

                   SizedBox(
                     width: 1.w,
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('Covid 19',style: titleTxtStyle,),
                       // Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has beenthe industry's standard dummy text ever since the 1500.",
                       //   style: txtStyleG,),


                     ],
                   ),





                 ],
               ),
             ],
           ),
         ) ,),

     );
   }
}
