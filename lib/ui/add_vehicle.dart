import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({Key? key}) : super(key: key);

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  bool? valuefirst = false;


  final List locale = [
    {'name': 'Hatch Back',  },
    {'name': 'Sedan',  },
    {'name': 'SUV',  },
    {'name': 'Premium',  },

  ];

  buildCarDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
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
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 415,
              height: 85,
              padding: const EdgeInsets.all(20),
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
                  const Text('ADD VEHICLE',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                    children: [

                  //model
                  InkWell(
                    onTap: (){
                      buildCarDialog(context);
                    },
                    child: Row(

                       children: [
                         SizedBox(
                           width: 10.w,
                         ),
                         Text('Hatch'),
                         SizedBox(
                           width: 60.w,
                         ),
                         Icon(Icons.arrow_drop_down_outlined)
                       ],
                    )
                    // TextFormField(
                    //   decoration: const InputDecoration(
                    //     border: InputBorder.none,
                    //     focusedBorder: InputBorder.none,
                    //     enabledBorder: InputBorder.none,
                    //     errorBorder: InputBorder.none,
                    //     disabledBorder: InputBorder.none,
                    //     contentPadding: EdgeInsets.only(
                    //         left: 35, bottom: 2, top: 11, right: 35),
                    //     hintText: "Hatch back",
                    //     suffixIcon: Icon(
                    //       Icons.arrow_drop_down_outlined,
                    //       color: Colors.black,
                    //       size: 25,
                    //     ),
                    //   ),
                    // ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 30,
                    endIndent: 20,
                  ),

                  //registration
                  TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 35, bottom: 2, top: 11, right: 35),
                      hintText: "Registration No (DL 9C AB 1234)",
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                        color: greytxt,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 30,
                    endIndent: 40,
                  ),

                  //Fuel points
                  TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 35, bottom: 2, top: 11, right: 35),
                      hintText: "Fuel Points/Km",
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                        color: greytxt,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 30,
                    endIndent: 160,
                  ),
                      SizedBox(
                        height: 2.h,
                      ),

                        const Text(
                          'Offering Seats',
                          style: TextStyle(
                        fontSize: 16.0,
                        color: greytxt,
                        fontWeight: FontWeight.w400,
                      ),),

                      SizedBox(
                        height: 2.h,
                      ),

                      //Box
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          SizedBox(
                            width: 10.w,
                          ),

                          Container(
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bgColor,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(width: 1, color: greytxt),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  blurRadius: 0.01,
                                  spreadRadius: 0.01,
                                  color: Colors.grey.shade200,
                                ),
                              ],
                            ),
                            child: const TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(

                                contentPadding: EdgeInsets.all(18.0),
                                border: InputBorder.none,
                              ),

                            ),
                          ),

                          Container(
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bgColor,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(width: 1, color: greytxt),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  blurRadius: 0.01,
                                  spreadRadius: 0.01,
                                  color: Colors.grey.shade200,
                                ),
                              ],
                            ),
                            child: const TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(

                                contentPadding: EdgeInsets.all(18.0),
                                border: InputBorder.none,
                              ),

                            ),
                          ),

                          Container(
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bgColor,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(width: 1, color: greytxt),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  blurRadius: 0.01,
                                  spreadRadius: 0.01,
                                  color: Colors.grey.shade200,
                                ),
                              ],
                            ),
                            child:  const TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(18.0),

                              ),

                            ),
                          ),

                        ],
                      ),

                      //Make & Category (Ex. Red Swift)
                      TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 35, bottom: 2, top: 11, right: 35),
                          hintText: "Make & Category (Ex. Red Swift)",
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            color: greytxt,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 30,
                        endIndent: 40,
                      ),
                      
                      //Features (Ex AC,Music,WIFI)
                      TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 35, bottom: 2, top: 11, right: 35),
                          hintText: "Features (Ex AC,Music,WIFI)",
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            color: greytxt,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 30,
                        endIndent: 40,
                      ),

                     //checkbox
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5.w,
                          ),
                          Checkbox(
                            checkColor: Colors.black,
                            activeColor: Colors.white60,
                            value: this.valuefirst,
                            onChanged: ( value) {
                              setState(() {
                                this.valuefirst = value!;
                              });
                            },
                          ),
                          const Text (
                            "Mark As Default Vehicle" ,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: borderblack,
                              fontWeight: FontWeight.normal,),),
                        ],
                      ),

                      SizedBox(
                        height: 2.h,
                      ),

                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              gradient: themeButtonColor),
                          child: Center(
                            child: Text(
                              "Save",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),




                ]))
          ],
        ),
      ),
    ));
  }
}
