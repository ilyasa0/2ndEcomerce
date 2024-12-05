import 'package:ecomerce/features/auth/login/login.dart';

import 'features/features.dart';

import 'preferences/preferences.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int selectedIndex = 0 ;

  IconButton buildItemNav(IconData icon,int index) {
    return IconButton(
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
        icon: Icon(icon,color:selectedIndex == index ? const Color(0xff6C5ECF): const Color(0XFF808191),)
    );
  }

  List<Widget> pages = const [
    HomePage(),
    MessagePage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1F1D2B),
      body: pages[selectedIndex],
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          onPressed: () {},
          backgroundColor: const Color(0XFF38ABBE),
          shape: const CircleBorder(),
          child:Image.asset(AppImage.cart)
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            height: 80,
            color: const Color(0XFF252836),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildItemNav(CustomIcon.home,0),
                buildItemNav(CustomIcon.message,1),
                const SizedBox(width: 40,),
                buildItemNav(CustomIcon.love,2),
                buildItemNav(CustomIcon.profile,3),

              ],
            ),
          ),
        ));
  }

}
