import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Notifications',
            style: titleTxtStyle,
          ),
          backgroundColor: bgColor,
          leading: IconButton(
              color: borderblack,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              )),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children:   <Widget>[
              SizedBox(
                height: 3.h,
              ),
              const ListTile(
                title: Expanded(
                  child: Text(
                      "You have booked lorem studio for 23/10/2021 and the time being scheduled is 11:00 AM.",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: borderblack,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                leading: Icon(
                  Icons.mail,
                  color: Colors.blueAccent,
                  size: 50,
                ),
                //subtitle: Text("Province"),
                trailing: Icon(Icons.more_vert),
              ),
              Divider( thickness: 2,endIndent: 1,indent: 1,),
              SizedBox(
                height: 3.h,
              ),
              const ListTile(
                title: Expanded(
                  child: Text(
                      "You have booked lorem studio for 23/10/2021 and the time being scheduled is 11:00 AM.",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: borderblack,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                leading: Icon(
                  Icons.mail,
                  color: Colors.blueAccent,
                  size: 50,
                ),
                //subtitle: Text("Province"),
                trailing: Icon(Icons.more_vert),
              ),
              Divider( thickness: 3,endIndent: 1,indent: 1,),

              const ListTile(
                title: Expanded(
                  child: Text(
                      "You have booked lorem studio for 23/10/2021 and the time being scheduled is 11:00 AM.",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: borderblack,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                leading: Icon(
                  Icons.mail,
                  color: Colors.blueAccent,
                  size: 50,
                ),
                //subtitle: Text("Province"),
                trailing: Icon(Icons.more_vert),
              ),
              Divider( thickness: 2,endIndent: 1,indent: 1,),
              SizedBox(
                height: 3.h,
              ),
              const ListTile(
                title: Expanded(
                  child: Text(
                      "You have booked lorem studio for 23/10/2021 and the time being scheduled is 11:00 AM.",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: borderblack,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                leading: Icon(
                  Icons.mail,
                  color: Colors.blueAccent,
                  size: 50,
                ),
                //subtitle: Text("Province"),
                trailing: Icon(Icons.more_vert),
              ),
              Divider( thickness: 2,endIndent: 1,indent: 1,),



            ],
          ),
        ),
      ),
    );
  }
}
