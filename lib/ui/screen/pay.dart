import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/ui/widgets/button.dart';
import 'package:flutter_application_1/ui/widgets/colour.dart';
import 'package:flutter_application_1/ui/widgets/text.dart';
import 'package:flutter_application_1/ui/widgets/textfield.dart';

class pay extends StatefulWidget {
  const pay({super.key});

  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      height: 20,
                    ),
                    // ignore: prefer_const_constructors
                    textwidget(
                        "تطبيق أسرة النملة", 30, green2, FontWeight.w500),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        textwidget(
                            "Choose branch", 15, Colors.black, FontWeight.bold),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.family_restroom_rounded,
                          color: green2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    textfieldwidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        textwidget(
                            "Choose branch", 15, Colors.black, FontWeight.bold),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.group,
                          color: green2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    textfieldwidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        textwidget(
                            "The amount", 15, Colors.black, FontWeight.bold),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.monetization_on,
                          color: green2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    textfieldwidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    buttonwidget("Pay Donation", green2, Colors.white),
                    const SizedBox(
                      height: 20,
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
