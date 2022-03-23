
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyRides extends StatefulWidget {
  const MyRides({Key? key}) : super(key: key);

  @override
  State<MyRides> createState() => _MyRidesState();
}

class _MyRidesState extends State<MyRides> {
  final _search = TextEditingController();

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
                    width: 2.w,
                  ),
                  GestureDetector(
                    onTap: (){
                      // Get.toNamed('/loginScreen');
                    },
                    child: Image.asset('assets/images/menu.png',height: 30,width: 30,fit: BoxFit.fill,),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(' MY Rides ',style: headingTxtStyle,),
                  SizedBox(
                    width: 20.w,
                  ),
                  IconButton(
                      onPressed: (){
                        // Get.toNamed('/notifications');
                      },
                      icon: Icon(Icons.notifications, color: bgColor,size: 25,)),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(width: 0.1, color: borderblack),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      blurRadius: 1.5,
                      spreadRadius: 1.5,
                      color:  borderblack,
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
                    hintText: 'Search your orders here ',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon:  Icon(Icons.filter_list_outlined),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

        Container(
          padding: EdgeInsets.all(12),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 3.h,),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('All',style: txtStyleN,),
                    Icon(Icons.filter_list_outlined),
                  ],
                ),
              SizedBox(
                height: 100,
                child: Card(
                  elevation: 5,
                  child:  Row(
                    children: [
                      SizedBox(
                        width: 2.w,
                      ),
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset('assets/images/driver.png',fit: BoxFit.fill,),),

                      SizedBox(
                        width: 2.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New Delhi ----- Noida',style: titleTxtStyle,),
                          Text('Tue,20/12/2021,04:00 PM',style: txtStyleG,),
                          Text('Load Total Amount: ₹ xxx.xx',style: txtStyleG,),

                        ],
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Container(
                        height: 35 ,
                        width: 80 ,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            color: greenbutton
                        ),
                        child: const Text('On Going',style:  TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,),
                        )
                      ),
                    ],
                  ),
                ),
              ),


              SizedBox(
                height: 100,
                child: Card(
                  elevation: 5,
                  child:  Row(
                    children: [
                      SizedBox(
                        width: 2.w,
                      ),
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset('assets/images/vehicle.png',fit: BoxFit.fill,),),

                      SizedBox(
                        width: 2.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New Delhi ----- Noida',style: titleTxtStyle,),
                          Text('Tue,20/12/2021,04:00 PM',style: txtStyleG,),
                          Text('Load Total Amount: ₹ xxx.xx',style: txtStyleG,),

                        ],
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Container(
                        height: 35 ,
                        width: 80 ,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            color: appBarColor
                        ),
                        child: const Text(
                          'Comlpeted',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,),
                        )
                      ),
                    ],
                  ),
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
