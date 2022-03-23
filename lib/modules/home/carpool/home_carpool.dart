
import 'package:envo_munish/modules/home/home_menu/chat_screen.dart';
import 'package:envo_munish/ui/my_rides.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../account_screen.dart';
import 'carpool_screen.dart';

class Carpool_Home extends StatefulWidget {
  final int index;


    Carpool_Home(  int this.index) ;

  @override
  State<Carpool_Home> createState() => _Carpool_HomeState(index);
}

class _Carpool_HomeState extends State<Carpool_Home> {

  int? _currentIndex;
  final int index;

  _Carpool_HomeState(this.index);

  int _currentPage = 0;
  var isProfilePage = true;

  @override
  initState() {

    super.initState();
    _currentPage = index;


  }
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> navigationPage = [
    CarpoolScreen(),
    MyRides(),
    ChatScreen(),
    AccountScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        backgroundColor: Colors.white,
          body: navigationPage.elementAt(_currentPage),
          bottomNavigationBar: _createBottomNavigationBar(),
      ));
  }

  Widget _createBottomNavigationBar() {
    return  BottomNavigationBar(
      // showUnselectedLabels: false,

      type: BottomNavigationBarType.fixed,
      selectedItemColor: appBarColor,
      unselectedItemColor: Colors.black87,
      backgroundColor: Colors.white,
      onTap: (int num) {
        _currentPage = num;

        setState(() {
          isProfilePage = _currentPage == 0 ? true : false;

        });
      },
      showSelectedLabels: true,
      currentIndex: _currentPage,
      items: const [


        BottomNavigationBarItem(
            icon:Icon(Icons.directions_car_outlined,size: 30,),
            label:'Carpool',
            backgroundColor: Colors.black12
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.timelapse_sharp,size: 30,),
            label: 'History',
            backgroundColor: Colors.black12
        ),

        BottomNavigationBarItem(
            icon: Icon(Icons.chat,size: 30, ),
            label: 'Chat',
            backgroundColor: Colors.black12
        ),

        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,size: 30,),
            label: 'Account',
            backgroundColor: Colors.black12
        ),

      ],
    );
  }
}
