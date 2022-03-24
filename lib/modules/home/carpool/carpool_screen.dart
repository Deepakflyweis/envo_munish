
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/home/home_menu/menu_home.dart';
import 'package:envo_munish/ui/matching_riders.dart';
import 'package:envo_munish/ui/notifications.dart';
import 'package:envo_munish/ui/offer_pool.dart';
import 'package:envo_munish/utils/drop_loc_popup.dart';
import 'package:envo_munish/utils/pickup_loc_popup.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CarpoolScreen extends StatefulWidget {
  const CarpoolScreen({Key? key}) : super(key: key);

  @override
  State<CarpoolScreen> createState() => _CarpoolScreenState();
}

class _CarpoolScreenState extends State<CarpoolScreen> {
  final _pickuploc =  TextEditingController();
  final _droploc =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
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
                    Get.to(()=> HomeMenu());

                  },
                  child: Image.asset('assets/images/menu.png',height: 30,width: 35,fit: BoxFit.fill,),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Text('CARPOOL',style: headingTxtStyle,),
                SizedBox(
                  width: 23.w,
                ),
                IconButton(
                    onPressed: (){
                      Get.to(()=> Notifications());

                    },
                    icon: Icon(Icons.notifications, color: bgColor,size: 25,)),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 210 ,
                width: 400,
                child: Image.asset('assets/images/location.png',fit: BoxFit.fitWidth,),
              ),

              Padding(
                  padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.to(()=> PickupPopup());
                      },
                      child: Container(
                        width: 320,
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(width: 0.3, color: appBarColor),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              blurRadius: 0.5,
                              spreadRadius:0.5,
                              color:  borderorng,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: _pickuploc,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(12.0),
                            hintText: 'Pick Up Location',
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 3.h,
                    ),

                    InkWell(
                      onTap: (){
                        Get.to(()=> DropPopup());
                      },

                      child: Container(
                        width: 320,
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(width: 0.3, color: appBarColor),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              blurRadius: 0.5,
                              spreadRadius:0.5,
                              color:  borderorng,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: _droploc,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(12.0),
                            hintText: 'Drop Location',
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(()=> MatchingRider());
                          },
                          child: Container(
                            height: 45 ,
                            width: 170 ,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                color: appBarColor
                            ),
                            child: const Text('FIND POOL', style: TextStyle(
                              fontSize: 16.0,
                              color: bgColor,
                              fontWeight: FontWeight.bold,),),
                          ),
                        ),

                        GestureDetector(
                          onTap: (){
                            Get.to(()=> OfferPool());

                          },
                          child: Container(
                            height: 45 ,
                            width: 170 ,
                            alignment: Alignment.center,
                            decoration:  BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                              border: Border.all(width: 1.0, color: appBarColor),
                            ),
                            child: const Text('OFFER POOL',style: TextStyle(
                                fontSize: 16.0,
                                color: appBarColor,
                                fontWeight: FontWeight.bold,),)
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 2.h,
                    ),

                    Divider(thickness: 20,color: bgColor,),
                    SizedBox(
                      height: 2.h,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('   Add Location', style: titleTxtStyle,)),

                    SizedBox(
                      height: 1.h,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            height: 40 ,
                            width: 170 ,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                color: greenbutton
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(Icons.home,color: bgColor,),

                                SizedBox(
                                  width: 3.w,
                                ),
                                const Text('Home', style: TextStyle(
                                  fontSize: 16.0,
                                  color: bgColor,
                                  fontWeight: FontWeight.bold,),),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: (){},
                          child: Container(
                              height: 40 ,
                              width: 170 ,
                              alignment: Alignment.center,
                              decoration:  const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                color: blueclr,

                              ),
                              child:  Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:    [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Icon(Icons.work_outline,color: bgColor,),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  const Text('OFFICE',style: TextStyle(
                                    fontSize: 16.0,
                                    color: bgColor,
                                    fontWeight: FontWeight.bold,),),
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),

                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Offer for you', style: titleTxtStyle,)),
                    SizedBox(
                      height: 1.h,
                    ),
                    
                    Image.asset('assets/images/soffer.png',width: 375 ,height: 130,),
                    SizedBox(
                      height: 1.h,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Ecometer to check your Savings and CO2 reduction', style: txtStyleG,)),
                    SizedBox(
                      height: 1.h,
                    ),

                    Image.asset('assets/images/soffer.png',width: 350 ,height: 130,),
                    SizedBox(
                      height: 1.h,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Your Contribution', style: titleTxtStyle,)),

                    SizedBox(
                      height: 1.h,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Refer to Earn 50 Points plus 2% commission on every ride', style: txtStyleG,)),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text('Username', style: titleTxtStyle,),
                        SizedBox(
                          width: 2.w,
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                              height: 35 ,
                              width: 80 ,
                              alignment: Alignment.center,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(70.0)),
                                border: Border.all(width: 1.0, color: appBarColor),
                                color: appBarColor,
                              ),
                              child: const Text('Level 1',style: TextStyle(
                                fontSize: 14.0,
                                color: bgColor,
                                fontWeight: FontWeight.bold,),)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Refer 10 more people to reach Level 2', style: txtStyleR,)),
                    SizedBox(
                      height: 2.h,
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
