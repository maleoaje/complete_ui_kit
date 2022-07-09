import 'package:complete_ui_kit/apps/bookmark_app/homepage.dart';
import 'package:complete_ui_kit/bookmark_app/add_categories.dart';
import 'package:complete_ui_kit/bookmark_app/favorites.dart';

import 'package:complete_ui_kit/config/constants.dart';

import 'package:flutter/material.dart';

class BottomNavBarBookmarkApp extends StatefulWidget {
  const BottomNavBarBookmarkApp({Key? key}) : super(key: key);

  @override
  State<BottomNavBarBookmarkApp> createState() =>
      _BottomNavBarBookmarkAppState();
}

class _BottomNavBarBookmarkAppState extends State<BottomNavBarBookmarkApp> {
  int currentState = 0;
  List<Widget> widgets = [
    const HomePageBookmarkApp(),
    const FavoritesPage(),
  ];
  var addPa = const AddPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: backgroundColor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 3,
        child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        currentState = 0;
                      },
                    );
                  },
                  icon: Icon(
                    Icons.home_outlined,
                    size: 35,
                    color: currentState == 0 ? blue : grey,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        currentState = 1;
                      },
                    );
                  },
                  icon: Icon(
                    Icons.star_outline,
                    size: 35,
                    color: currentState == 1 ? blue : grey,
                  ),
                ),
              ],
            )),
      ),
      body: widgets[currentState],
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddPage()),
          );
        },
        backgroundColor: blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
