// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                        padding: const EdgeInsets.all(4.0),
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
                  'Search',
                  style: GoogleFonts.mcLaren(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        LineAwesomeIcons.search,
                        size: 25,
                        color: Colors.white,
                      ),
                      hintText: 'Artists,songs or podcasts',
                      hintStyle: GoogleFonts.mcLaren(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Browse',
                        style: GoogleFonts.mcLaren(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'Music',
                            style: GoogleFonts.mcLaren(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Podcast',
                        style: GoogleFonts.mcLaren(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Your top genres ',
                    style: GoogleFonts.mcLaren(
                      fontSize: 17,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: Colors.indigo,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Text(
                              'indie',
                              style: GoogleFonts.mcLaren(
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(width: 20),
                            Image(
                              image: AssetImage('assets/images/ic_mix1.png'),
                              width: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.red,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Text(
                              'Rock',
                              style: GoogleFonts.mcLaren(
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(width: 20),
                            Image(
                              image: AssetImage('assets/images/ic_mix2.png'),
                              width: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Featured Collections ',
                    style: GoogleFonts.mcLaren(
                      fontSize: 17,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: Colors.pink,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Summer',
                              style: GoogleFonts.mcLaren(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage('assets/images/ic_mix2.png'),
                              width: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[300],
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'New\nRelease',
                              style: GoogleFonts.mcLaren(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage('assets/images/ic_mix4.png'),
                              width: 65,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: Colors.orange,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Higher\nGround',
                              style: GoogleFonts.mcLaren(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage('assets/images/ic_mix5.png'),
                              width: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.purple,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Balck\nHistory',
                              style: GoogleFonts.mcLaren(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage('assets/images/ic_mix1.png'),
                              width: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Discover ',
                    style: GoogleFonts.mcLaren(
                      fontSize: 17,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: Colors.green,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'For You',
                              style: GoogleFonts.mcLaren(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage('assets/images/ic_mix5.png'),
                              width: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[300],
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Concerts',
                              style: GoogleFonts.mcLaren(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage('assets/images/ic_mix3.png'),
                              width: 65,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: Colors.indigo[300],
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Charts',
                              style: GoogleFonts.mcLaren(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage('assets/images/ic_mix2.png'),
                              width: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.pinkAccent,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Radio',
                              style: GoogleFonts.mcLaren(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 35),
                            Image(
                              image: AssetImage('assets/images/ic_mix1.png'),
                              width: 70,
                            )
                          ],
                        ),
                      ),
                    ),
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
