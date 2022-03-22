
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  final _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(color: bgColor,
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, color: Colors.black,size: 20,)),

                  SizedBox(
                    width: 1.w,
                  ),

                  Text('Select Location',style: txtStyleN,),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),

              //Enter Address
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(60.0),
                    border: Border.all(width: 0.3, color: borderorng),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        blurRadius: 1.5,
                        spreadRadius: 1.5,
                        color:  borderorng,
                      ),
                    ],
                  ),
                  child: TextFormField(
                     controller: _search,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12.0),
                      hintText: 'Enter Address ',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon:  Icon(Icons.close_rounded),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              Divider( thickness: 3,endIndent: 1,indent: 1,),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Icon(
                    Icons.gps_fixed,
                    size: 2.8.h,
                    color: greenbutton,
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "Select Location by map",
                    style: TextStyle(color: greenbutton,
                        fontWeight: FontWeight.w400, fontSize: 14.sp),
                  ),
                ],
              ),

              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Icon(
                    Icons.timelapse_sharp,
                    size: 3.8.h,
                    color: borderblack,
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "20/A",
                        style: TextStyle(color: borderblack,
                            fontWeight: FontWeight.w500, fontSize: 12.sp),
                      ),
                      Text(
                        "20A/1,Near CBI Acharya Niketan ,Mayur Vihar",
                        style: TextStyle(color: borderblack,
                            fontWeight: FontWeight.w500, fontSize: 10.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),),

    );
  }
}
