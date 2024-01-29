import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/ui/widgets/colour.dart';
import 'package:flutter_application_1/ui/widgets/text.dart';

class family_members extends StatefulWidget {
  const family_members({super.key});

  @override
  State<family_members> createState() => _family_membersState();
}

class _family_membersState extends State<family_members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          textwidget("Family Members", 15, Colors.black, FontWeight.w500),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: 638,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      family_tile(
                        "Darlene Robertson",
                        "01-May-2024",
                        "",
                      ),
                      const Divider(
                        color: Colors.black,
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget family_tile(String familymembername, String Dob, String memberimg) {
  return SizedBox(
    height: 85,
    width: 350,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textwidget(familymembername, 15, Colors.black,
                            FontWeight.w500),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                textwidget(
                                    "DOB", 12, Colors.white, FontWeight.bold),
                                textwidget(
                                    "Office", 12, Colors.blue, FontWeight.w500),
                              ],
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                textwidget(
                                    "DOB", 12, Colors.black, FontWeight.bold),
                                textwidget(
                                    Dob, 12, Colors.grey, FontWeight.w500),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            //
          ],
        ),
      ],
    ),
  );
}
