import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weak2/components/skills.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        headerBox(size),
        intoMySelft(size),
        Skills(size: size)
      ],
    );
  }

  Container headerBox(Size size) {
    return Container(
      width: size.width,
      height: size.height * 0.35,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.35 - 25,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://i1.wp.com/frostyhoneyjuicy.com/images/photoshop/profiles/Discord_Avatar.gif'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Supanat K.',
                        style: GoogleFonts.fredokaOne(
                          textStyle: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2.5,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Software Engineering Student",
                        style: GoogleFonts.varelaRound(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.location,
                          color: Colors.white,
                        ),
                        Text(
                          'Suphanburi, Thailand',
                          style: GoogleFonts.varelaRound(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 50,
                            color: Colors.black.withOpacity(0.25))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 5.0, right: 5),
                              child: Icon(FontAwesomeIcons.github, size: 18),
                            ),
                            Text(
                              "GITHUB",
                              style: GoogleFonts.mitr(
                                textStyle: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 5.0, right: 5),
                              child: Icon(FontAwesomeIcons.globeAsia, size: 18),
                            ),
                            Text(
                              "WEBSITE",
                              style: GoogleFonts.mitr(
                                textStyle: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            bottom: 0,
          )
        ],
      ),
    );
  }

  Center intoMySelft(size) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Container(
          width: size.width * 0.9,
          child: Text(
            'My name is Supanat Konprom,I\'m a software engineering student at the University of Phayo.',
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(color: Colors.black, fontSize: 15),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}