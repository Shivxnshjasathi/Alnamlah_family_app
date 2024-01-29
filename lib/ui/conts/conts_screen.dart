import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/ui/screen/add.dart';
import 'package:flutter_application_1/ui/screen/family_members.dart';
import 'package:flutter_application_1/ui/screen/family_news.dart';
import 'package:flutter_application_1/ui/screen/family_tree.dart';
import 'package:flutter_application_1/ui/screen/home.dart';
import 'package:flutter_application_1/ui/screen/menu.dart';
import 'package:flutter_application_1/ui/screen/pay.dart';
import 'package:flutter_application_1/ui/widgets/colour.dart';
import 'package:flutter_application_1/ui/widgets/text.dart';
import 'package:page_transition/page_transition.dart';

class cont_screen extends StatefulWidget {
  const cont_screen({super.key});

  @override
  State<cont_screen> createState() => _cont_screenState();
}

class _cont_screenState extends State<cont_screen> {
  @override
  List<dynamic> iconList = [
    const Icon(Icons.home_max_rounded),
    const Icon(Icons.newspaper_outlined),
    const Icon(Icons.family_restroom_rounded),
    const Icon(Icons.menu),
  ];

  final pages = [
    const home(),
    const family_news(),
    const family_members(),
    const pay(),
    const menu(),
  ];

  int _bottomNavIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  textwidget("تطبيق أسرة النملة", 30, green2, FontWeight.w500),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 20,
                          Icons.search,
                          color: green2,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        textwidget("Search", 15, green2, FontWeight.w500),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: green2,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        body: IndexedStack(
          index: _bottomNavIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_max_rounded,
                ),
                label: "Home",
              ),
              const BottomNavigationBarItem(
                label: "Family News",
                icon: Icon(Icons.newspaper_outlined),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  size: 50,
                  Icons.add_circle,
                  color: green2,
                ),
              ),
              const BottomNavigationBarItem(
                label: "Family Tree",
                icon: Icon(Icons.family_restroom_rounded),
              ),
              const BottomNavigationBarItem(
                label: "Menu",
                icon: Icon(Icons.menu),
              ),
            ],
            currentIndex: _bottomNavIndex,
            selectedItemColor: green2,
            unselectedFontSize: 15,
            unselectedItemColor: Colors.black38,
            iconSize: 30,
            selectedFontSize: 15,
            onTap: _onItemTapped,
            elevation: 5));
  }
}
