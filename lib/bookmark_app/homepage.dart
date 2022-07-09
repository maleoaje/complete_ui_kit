import 'package:complete_ui_kit/config/constants.dart';
import 'package:flutter/material.dart';

class HomePageBookmarkApp extends StatefulWidget {
  const HomePageBookmarkApp({Key? key}) : super(key: key);

  @override
  State<HomePageBookmarkApp> createState() => _HomePageBookmarkAppState();
}

class _HomePageBookmarkAppState extends State<HomePageBookmarkApp> {
  final TextEditingController _etSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              color: blue,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.workspaces,
                      color: white,
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          color: white,
                        ),
                        const Positioned(
                          top: 3,
                          right: 3,
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: orange,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hi Olsn",
                    style: TextStyle(
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome Back 👋",
                    style: TextStyle(
                        fontSize: 18,
                        color: white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _etSearch,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: white, fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "what category are you searching for?",
                    hintStyle: TextStyle(color: white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: white,
                      size: 30,
                    ),
                    fillColor: liteGrey,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.672,
            child: ListView(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    children: [
                      const Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          Icon(
                            Icons.delete_outline,
                            color: blue,
                            size: 35,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.edit_outlined,
                            color: blue,
                            size: 35,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.swap_vert,
                            color: blue,
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCard('New Ideas', Icons.lightbulb_outline_rounded,
                        darkyellow, yellow, darkyellow),
                    _buildCard('Music', Icons.music_note_outlined,
                        darkOtherBlue, otherBlue, darkOtherBlue),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCard(
                        'Programming',
                        Icons.monitor_outlined,
                        darkProgrammingColor,
                        programmingColor,
                        darkProgrammingColor),
                    _buildCard('Cooking', Icons.lunch_dining_outlined,
                        darkCookingColor, cookingColor, darkCookingColor),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCard('Travel', Icons.airplane_ticket_outlined,
                        darkTravelColor, travelColor, darkTravelColor),
                    _buildCard('Science', Icons.science_outlined,
                        darkSciecneColor, scienceColor, darkSciecneColor),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String title, IconData icon, Color iconColor,
      Color containerColor, Color textColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: containerColor,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: white,
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 45,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
