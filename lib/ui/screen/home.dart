import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/ui/screen/family_members.dart';
import 'package:flutter_application_1/ui/widgets/colour.dart';
import 'package:flutter_application_1/ui/widgets/text.dart';
import 'package:page_transition/page_transition.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: const family_members()));
                      },
                      child: tabtile(
                        "Family Funds",
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                );
              },
            ),
          ),
        ),
        Container(
          height: 220,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
          ),
          // child: ClipRRect(
          //   borderRadius: BorderRadius.circular(10),
          //   child: Image.network("", fit: BoxFit.cover),
          // ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    event_tile(
                      "Annual Meeting | To the AI-Yahya Family | AI-Qassim - 1445 AH",
                      "Shah rukh Khan",
                      "01-02-2024",
                      "5 AM",
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
    ));
  }
}

Widget tabtile(
  String text1,
) {
  return Container(
    height: 30,
    decoration: BoxDecoration(
        border: Border.all(color: green2, width: 1),
        borderRadius: BorderRadius.circular(100)),
    child: Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: textwidget(text1, 12, green2, FontWeight.bold),
    )),
  );
}

Widget event_tile(String eventtitle, String eventby, String eventdate,
    String eventtime, String eventimg) {
  return SizedBox(
    height: 200,
    width: 350,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textwidget(eventtitle, 15, Colors.black, FontWeight.w500),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textwidget(
                            "By $eventby", 12, Colors.black, FontWeight.w500),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: green2,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            textwidget(
                                eventdate, 12, Colors.grey, FontWeight.w500),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.lock_clock_rounded,
                              color: green2,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            textwidget(
                                eventtime, 12, Colors.grey, FontWeight.w500),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            textwidget(
                                "Event", 12, Colors.blue, FontWeight.w500),
                            const SizedBox(
                              width: 3,
                            ),
                            const Icon(
                              Icons.stop_rounded,
                              color: Colors.grey,
                              size: 10,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            textwidget(
                                "1 min ago", 12, Colors.grey, FontWeight.w500),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 144,
                    width: 144,
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
