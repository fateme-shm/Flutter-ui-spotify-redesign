// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: Colors.white38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          CupertinoIcons.question,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          CupertinoIcons.person,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  'Home',
                  style: GoogleFonts.mcLaren(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Mode Just For You ( Mix Music ) ',
                  style: GoogleFonts.mcLaren(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/ic_mix1.png'),
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 30),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/ic_mix2.png'),
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 30),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/ic_mix3.png'),
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 30),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/ic_mix4.png'),
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 30),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/ic_mix5.png'),
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Recommended Artists For You',
                  style: GoogleFonts.mcLaren(
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('assets/images/ic_drake.png'),
                          width: 70,
                          height: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('assets/images/ic_ariana.png'),
                          width: 70,
                          height: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('assets/images/ic_rihana.png'),
                          width: 70,
                          height: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('assets/images/ic_zein.png'),
                          width: 70,
                          height: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('assets/images/ic_jastin.png'),
                          width: 70,
                          height: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('assets/images/ic_bilie.png'),
                          width: 70,
                          height: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Popular Play List Matching Your Taste',
                  style: GoogleFonts.mcLaren(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage('assets/images/ic_playlist1.png'),
                            width: 160,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text('Concert 29 Oct'),
                      ],
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                            image: AssetImage('assets/images/ic_playlist2.png'),
                            width: 160,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text('Concert 11 Dec'),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Divider(color: Colors.white24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage('assets/images/ic_playlist3.png'),
                            width: 160,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text('Best Musician'),
                      ],
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                            image: AssetImage('assets/images/ic_playlist4.png'),
                            width: 160,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text('Best Pianist'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
