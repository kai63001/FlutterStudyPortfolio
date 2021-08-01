import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Skills extends StatefulWidget {
  const Skills({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> data = [
      {"n": 0,"image":"assets/images/typescript.png", "name": "TYPESCRIPT"},
      {"n": 1,"image":"assets/images/javascript.png", "name": "JAVASCRIPT"},
      {"n": 2,"image":"assets/images/golang.png", "name": "GOLANG"},
      {"n": 3,"image":"assets/images/c.png", "name": "C#"},
      {"n": 4,"image":"assets/images/php.png", "name": "PHP"},
      {"n": 5,"image":"assets/images/python.png", "name": "PYTHON"},
      {"n": 6,"image":"assets/images/java.png", "name": "JAVA"},
    ];
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              width: widget.size.width * 0.9,
              child: Text(
                'SKILLS',
                style: GoogleFonts.fredokaOne(
                  textStyle: TextStyle(
                      color: Colors.black, letterSpacing: 2.5, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
              height: 100,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  for (var i in data) boxSkills(i),
                ],
              )),
        )
      ],
    );
  }

  Padding boxSkills(data) {
    var leftP = data["n"] == 0 ? widget.size.width * 0.05 : 0.0;
    var rightP = data["n"] == 6 ? widget.size.width * 0.05 : 8.0;
    return Padding(
      padding: EdgeInsets.only(left: leftP, right: rightP),
      child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(data["image"]),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  data["name"],
                  style: GoogleFonts.mitr(
                    textStyle: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ),
            ],
          ))),
    );
  }
}
