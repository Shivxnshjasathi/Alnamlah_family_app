import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/auth_ui/register.dart';
import 'package:flutter_application_1/ui/widgets/button.dart';
import 'package:flutter_application_1/ui/widgets/colour.dart';
import 'package:flutter_application_1/ui/widgets/text.dart';
import 'package:flutter_application_1/ui/widgets/textfield.dart';
import 'package:page_transition/page_transition.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    // ignore: prefer_const_constructors
                    textwidget(
                        "تطبيق أسرة النملة", 30, green2, FontWeight.w500),
                    const SizedBox(
                      height: 5,
                    ),
                    textwidget("Log in", 30, Colors.black, FontWeight.w500),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textwidget(
                        "Mobile number", 15, Colors.black, FontWeight.bold),
                    const SizedBox(
                      height: 5,
                    ),
                    textfieldwidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    buttonwidget("Login", green2, Colors.white),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 155,
                              child: Divider(
                                color: Colors.black12,
                                thickness: 2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  textwidget("or", 15, green2, FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 155,
                              child: Divider(
                                color: Colors.black12,
                                thickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    buttonwidget("Login as Guest", Colors.white, green2),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: const register()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          textwidget("Don't have an account ? ", 15, green2,
                              FontWeight.w500),
                          textwidget("Register ", 15, green2, FontWeight.bold),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Rectangle.png"))),
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
