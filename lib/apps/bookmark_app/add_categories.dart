import 'package:complete_ui_kit/config/constants.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
            decoration: const BoxDecoration(
              color: blue,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.arrow_back,
                        color: white,
                        size: 30,
                      ),
                    ),
                    Text(
                      'Title Holder',
                      style: TextStyle(
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.share,
                      color: white,
                    )
                  ],
                ),
              ],
            ),
          ),
          ListView(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'Title',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
