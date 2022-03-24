
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/home/home_menu/menu_home.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'notifications.dart';

class PicknDrop extends StatefulWidget {
  const PicknDrop({Key? key}) : super(key: key);

  @override
  State<PicknDrop> createState() => _PicknDropState();
}

class _PicknDropState extends State<PicknDrop> {

  final _sno = TextEditingController();
  final _rno = TextEditingController();


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
                    Text('PICK & DROP ',style: headingTxtStyle,),
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
                  height: 180,
                  child: Image.asset('assets/images/location.png', fit: BoxFit.fill,)),

              Container(
                height: 600,
                width: 380,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.2.w,color: Colors.black12),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 15,
                        color:bckground,)

                    ],
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Text('PICKUP & DROP LOCATION*',style: txtStyleN,),
                    Divider(color: Colors.black12,),

                    SizedBox(
                      height: 10.h,
                    ),
                    Text("SENDER'S INFORMATION*",style: txtStyleN,),
                    Divider(color: Colors.black12,),
                    Text("SENDER'S NAME",style: txtStyleG,),
                    const Divider(color: Colors.black12,indent: 5,endIndent: 5,thickness: 1.0,),


                    //sender
                    TextFormField(
                      controller: _sno,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration:  const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        hintText: '+911234567890',

                        border: InputBorder.none,
                      ),
                    ),
                    Divider(color: Colors.black26,indent: 15,endIndent: 50,thickness: 2.0,),

                    SizedBox(
                      height: 5.h,
                    ),
                    Text("RECIEVER'S INFORMATION*",style: txtStyleN,),
                    Divider(color: Colors.black12,),
                    Text("Reciever's name",style: txtStyleG,),
                    Divider(color: Colors.black12,indent: 5,endIndent: 5,thickness: 1.0,),
                    //sender
                    TextFormField(
                      controller: _rno,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration:  const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        hintText: '+911234567890',

                        border: InputBorder.none,
                      ),
                    ),

                    SizedBox(
                      height: 5.h,
                    ),
                    Divider(color: Colors.black26,indent: 25,endIndent: 10,thickness: 1.0,),

                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        height: 6.h,
                        width: 100.w,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            gradient: themeButtonColor),
                        child: Center(
                          child: Text(
                            "NEXT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),),
        ));
  }
}
