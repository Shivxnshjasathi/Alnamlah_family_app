import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/conts/conts_screen.dart';
import 'package:flutter_application_1/ui/widgets/button.dart';
import 'package:flutter_application_1/ui/widgets/colour.dart';
import 'package:flutter_application_1/ui/widgets/text.dart';
import 'package:flutter_application_1/ui/widgets/textfield.dart';
import 'package:page_transition/page_transition.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    // ignore: prefer_const_constructors
                    textwidget(
                        "تطبيق أسرة النملة", 30, green2, FontWeight.w500),
                    const SizedBox(
                      height: 5,
                    ),
                    textwidget(
                        "Create an account", 30, Colors.black, FontWeight.w500),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textwidget("Name", 15, Colors.black, FontWeight.bold),
                    const SizedBox(
                      height: 5,
                    ),
                    textfieldwidget(),
                    const SizedBox(
                      height: 5,
                    ),
                    textwidget(
                        "Mobile number", 15, Colors.black, FontWeight.bold),
                    const SizedBox(
                      height: 5,
                    ),
                    textfieldwidget(),
                    const SizedBox(
                      height: 5,
                    ),
                    textwidget("Name", 15, Colors.black, FontWeight.bold),
                    const SizedBox(
                      height: 5,
                    ),
                    textfieldwidget(),
                    const SizedBox(
                      height: 5,
                    ),
                    textwidget("Name", 15, Colors.black, FontWeight.bold),
                    const SizedBox(
                      height: 5,
                    ),
                    textfieldwidget(),
                    const SizedBox(
                      height: 5,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        textwidget(
                            "I agree to all the ", 15, green2, FontWeight.w500),
                        textwidget(
                            "Terms & Conditions ", 15, green2, FontWeight.bold),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: const cont_screen()));
                        },
                        child: buttonwidget(
                            "Create an account", green2, Colors.white)),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textwidget("Already have an account ? ", 15, green2,
                            FontWeight.w500),
                        textwidget("Login ", 15, green2, FontWeight.bold),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Rectangle.png"))),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
