
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            child: Text(
              'SKILLS',
              style: GoogleFonts.fredokaOne(
                textStyle: TextStyle(
                    color: Colors.black, letterSpacing: 2.5, fontSize: 18),
              ),
            ),
          ),
        ),
      );
  }
}
