
import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:flutter/material.dart';

class SearchnConfirm extends StatefulWidget {
  const SearchnConfirm({Key? key}) : super(key: key);

  @override
  State<SearchnConfirm> createState() => _SearchnConfirmState();
}

class _SearchnConfirmState extends State<SearchnConfirm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Align(
                alignment: Alignment.bottomCenter,
                 child: InkWell(
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
                         "Confirm Location",
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 15.sp,
                             fontWeight: FontWeight.bold),
                       ),
                     ),
                   ),
                 ),
              ),

              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ));
  }
}
