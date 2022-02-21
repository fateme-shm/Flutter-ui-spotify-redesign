// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:spotify/MyCoustomScroll.dart';
import 'package:spotify/home.dart';
import 'package:spotify/library.dart';
import 'package:spotify/music.dart';
import 'package:spotify/search.dart';
import 'package:spotify/singer.dart';

void main() {
  runApp(
      // DevicePreview(
      //   enabled: true,
      //   // ignore: prefer_const_literals_to_create_immutables
      //   tools: [
      //     ...DevicePreview.defaultTools,
      //   ],
      //   builder: (context) => MyApp(),
      // ),
      MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      theme: ThemeData(
          primarySwatch: Colors.green,
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      title: 'Spotify Concept',
      initialRoute: '/',
      routes: {
        '/': (context) => NavClass(),
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/library': (context) => LibraryPage(),
        '/singar': (context) => SingerPage(),
        '/music': (context) => MusicPage(),
      },
    );
  }
}

class NavClass extends StatefulWidget {
  @override
  State<NavClass> createState() => _NavClassState();
}

class _NavClassState extends State<NavClass> {
  int _selectedIndex = 0;
  final List<Widget> _menuOption = [
    HomePage(),
    SearchPage(),
    LibraryPage(),
  ];
  void _onTapNav(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _menuOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              LineAwesomeIcons.campground,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(
              LineAwesomeIcons.search,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineAwesomeIcons.music,
            ),
            label: "Library",
          ),
        ],
        iconSize: 25,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onTapNav,
        selectedItemColor: Colors.green,
        selectedLabelStyle: GoogleFonts.mcLaren(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: GoogleFonts.mcLaren(
          fontWeight: FontWeight.bold,
        ),
        selectedIconTheme: IconThemeData(size: 30),
        currentIndex: _selectedIndex,
      ),
    );
  }
}
