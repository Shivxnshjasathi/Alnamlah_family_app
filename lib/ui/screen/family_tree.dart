import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/ui/widgets/text.dart';

class family_tree extends StatefulWidget {
  const family_tree({super.key});

  @override
  State<family_tree> createState() => _family_treeState();
}

class _family_treeState extends State<family_tree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          textwidget("Family tree", 15, Colors.black, FontWeight.w500),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/Rectangle.png"))),
          ),
        ]),
      ),
    );
  }
}
