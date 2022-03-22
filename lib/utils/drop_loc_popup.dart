


import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DropPopup extends StatefulWidget {
   DropPopup({Key? key}) : super(key: key);

  @override
  State<DropPopup> createState() => _DropPopupState();
}

class _DropPopupState extends State<DropPopup> {
  final _drop = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Column(
          children: [
            Row(
              children: [
                IconButton(
                    color: bgColor,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black,size: 20,)),

                SizedBox(
                  width: 1.w,
                ),

                Text('Drop Location',style: txtStyleN,),
              ],
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
                  controller: _drop,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field can\'t be empty';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(12.0),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon:  Icon(Icons.close_rounded),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
