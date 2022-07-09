import 'package:complete_ui_kit/bookmark_app/bottom_nav_bar.dart';
import 'package:complete_ui_kit/config/constants.dart';
import 'package:complete_ui_kit/config/global_style.dart';

import 'package:complete_ui_kit/task_planner/auth/sign_up.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: Center(
                  child: Text(
                    "COMPLETE UI KIT",
                    style: GlobalStyle.headerStyle,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignUpTaskPlanner()));
                },
                child: _buildAppViewCard(Icons.task, "Task Planner UI Kit"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BottomNavBarBookmarkApp()));
                },
                child: _buildAppViewCard(Icons.bookmark, "Bookmark App UI Kit"),
              ),
            ],
          ),
        ));
  }

  Widget _buildAppViewCard(IconData appIcon, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
            boxShadow: [
              BoxShadow(
                  color: black.withOpacity(0.1),
                  spreadRadius: 0 / 8,
                  blurRadius: 20,
                  offset: const Offset(0, 0.1)),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(appIcon),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      title,
                      style: GlobalStyle.appTitleStyle,
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_right_rounded,
                  size: 35,
                  color: bgColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
