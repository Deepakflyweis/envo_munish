
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Ecometer extends StatefulWidget {
  const Ecometer({Key? key}) : super(key: key);

  @override
  State<Ecometer> createState() => _EcometerState();
}

class _EcometerState extends State<Ecometer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //Appbar menu
              Container(
                width: 415,
                height: 85,
                padding: const EdgeInsets.all(20),
                decoration:   const BoxDecoration(
                  color:bgColor,
                  boxShadow: [
                    BoxShadow(
                      offset:  Offset(1.0, 1.0,),
                      color: greytxt,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),  ],
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
                          color: Colors.black,
                          size: 20,
                        )),
                    SizedBox(
                      width: 2.w,
                    ),
                   Text('ECOMETER',
                        style:  titleTxtStyle
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 3.h,
              ),


              Container(
                height: 600,
                width: 330,
                padding: EdgeInsets.all(20.0) ,
                decoration: BoxDecoration( border: Border.all(
                    width: 1,color: Colors.grey
                ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children:  <Widget>[
                    SizedBox(
                      height: 2.h,
                    ),
                    ListTile(

                      title: Text('Username', style: titleTxtStyle,),
                      subtitle:  Text('0 Kg(s) of CO2 reduced',style: txtStyleR),
                    ),


                    SizedBox(
                      height: 2.h,
                    ),

                    ListTile(

                      title: Text('0',style: titleTxtStyle),
                      subtitle:  Text('+91 Rides shared',style: txtStyleR,),
                    ),

                    SizedBox(
                      height: 2.h,
                    ),

                    ListTile(
                      title: Text('0 Km',style: titleTxtStyle),
                      subtitle:  Text('Distance shared',style: txtStyleR,),
                    ),


                    SizedBox(
                      height: 2.h,
                    ),

                    ListTile(
                      title: Text('No new friends yet ',style: titleTxtStyle),
                      subtitle:  Text('New friends made ',style: txtStyleR,),
                    ),

                    SizedBox(
                      height: 2.h,
                    ),

                    ListTile(
                      title: Text('0 INR',style: titleTxtStyle),
                      subtitle:  Text('Amount Saved',style: txtStyleR,),
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
