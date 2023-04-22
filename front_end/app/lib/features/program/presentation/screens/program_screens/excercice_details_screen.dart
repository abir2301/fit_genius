import 'package:app/core/app_theme.dart';
import 'package:app/features/program/presentation/components/rounded_button.dart';
import 'package:flutter/material.dart';

class Excercice {
  late int id;
  late String name;
  late String image;
  late String desc;
  late bool isDone;
  late int duree;
  Excercice(
      {required this.id,
      required this.name,
      required this.image,
      required this.desc,
      required this.isDone,
      required this.duree});
}

class ExcerciceDetails extends StatefulWidget {
  late Excercice excercice;
  ExcerciceDetails({required this.excercice});

  @override
  State<ExcerciceDetails> createState() => _ExcerciceDetailsState();
}

class _ExcerciceDetailsState extends State<ExcerciceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            color: Color(0xffcdd6f1),
          ),
          child: ListView(children: [
            Center(
              child: SizedBox(
                child: Text(
                  "${widget.excercice.name} ",
                  style: screenHeaderStyle(size: 35),
                ),
              ),
            ),
            Center(
              child: RoundedTextButton(
                  color: secondColor,
                  onPress: () {},
                  label: "start excercising "),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Center(
                  child:
                      Image.asset("assets/workout/${widget.excercice.image}")),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                widget.excercice.desc,
                style: TextStyle(
                    color: Color(0xff717171),
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: RoundedTextButton(
                    color: Color(0xff13AEC0),
                    onPress: () {
                      Navigator.pop(context);
                    },
                    label: "Back "),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
