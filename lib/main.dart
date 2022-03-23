// ignore_for_file: prefer_const_constructors

import 'package:envo_munish/modules/splash/splash%20screen/splash_screen.dart';
import 'package:envo_munish/ui/add_vehicle.dart';
import 'package:envo_munish/ui/ecometer_screen.dart';
import 'package:envo_munish/ui/help_support.dart';
import 'package:envo_munish/ui/matching_riders.dart';
import 'package:envo_munish/ui/notifications.dart';
import 'package:envo_munish/ui/offer_pool.dart';
import 'package:envo_munish/ui/payment_link.dart';
import 'package:envo_munish/ui/pick_drop_screen.dart';
import 'package:envo_munish/ui/searched_n_confirm.dart';
import 'package:envo_munish/ui/select_location.dart';
import 'package:envo_munish/utils/drop_loc_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import 'modules/home/account_screen.dart';
import 'modules/home/home_menu/menu_home.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp( 
          debugShowCheckedModeBanner: false,
          title: 'Envosaferide',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: AccountScreen(),
        );
      },
    );
  }
}
