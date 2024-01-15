import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/ui/widgets/text.dart';

class family_news extends StatefulWidget {
  const family_news({super.key});

  @override
  State<family_news> createState() => _family_newsState();
}

class _family_newsState extends State<family_news> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 300,
                    child: textwidget(
                        "Monarch population soars 4,900 percent since last year in a two three thrilling 2021 western migration years",
                        18,
                        Colors.black,
                        FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textwidget("1m ago", 15, Colors.grey, FontWeight.w500),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      textwidget(
                          "By Andy Corbley", 15, Colors.black, FontWeight.w500),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              textwidget(
                  "When just 200 Western monarch butterflies arrived in the Pismo Beach Butterfly Grove from their northerly migration last year, park rangers feared the treasured insect would soon be gone forever.This year, however, volunteers tallied their numbers at over 100,000, a spectacular swarm of hope that traveled down from as far north as Canada to the spend the winter on the California coast.",
                  18,
                  Colors.black,
                  FontWeight.w500),
            ],
          ),
        ),
      ),
    );
  }
}
