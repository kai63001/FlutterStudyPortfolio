import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Other extends StatelessWidget {
  const Other({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Container(
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'OTHER',
                style: GoogleFonts.fredokaOne(
                  textStyle: TextStyle(
                      color: Colors.black, letterSpacing: 2.5, fontSize: 18),
                ),
                textAlign: TextAlign.left,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Image.asset("assets/images/docker.png",width: 50,)],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Image.asset("assets/images/sql.png",width: 50,)],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Image.asset("assets/images/sql2.png",width: 50,)],
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Image.asset("assets/images/mongodb.png",width: 50,)],
                          )),
                        ),
                      ),
                    ),
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
