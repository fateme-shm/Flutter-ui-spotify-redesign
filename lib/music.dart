// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    double _currentSliderValue = 20;
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 70, right: 20, left: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.arrow_back_ios)),
                    Text(
                      'My PlayList',
                      style: GoogleFonts.mcLaren(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(CupertinoIcons.ellipsis),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage('assets/images/ic_drake.png'),
                  width: 320,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Popstar (feat. Drake)',
                style: GoogleFonts.mcLaren(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Dj Khaled. Drake',
                style: GoogleFonts.mcLaren(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),
              Slider(
                thumbColor: Colors.green,
                activeColor: Colors.green,
                inactiveColor: Colors.white,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                value: _currentSliderValue,
                onChanged: (double value) {
                  setState(
                    () {
                      _currentSliderValue = value;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      '1:24',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      '3:20',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      LineAwesomeIcons.reply_all,
                      size: 30,
                    ),
                    Icon(
                      LineAwesomeIcons.backward,
                      size: 30,
                    ),
                    Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(
                          LineAwesomeIcons.play,
                          size: 30,
                        ),
                      ),
                    ),
                    Icon(
                      LineAwesomeIcons.forward,
                      size: 30,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.green,
                      size: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      LineAwesomeIcons.music,
                      size: 30,
                    ),
                    Icon(
                      Icons.next_plan,
                      size: 30,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
