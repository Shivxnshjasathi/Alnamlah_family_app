import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 170,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 100,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(
            width: 170,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 100,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    )

        // ...... other list children.
        );
  }
}
