import 'package:complete_ui_kit/apps/task_planner/calendar.dart';
import 'package:complete_ui_kit/apps/task_planner/homepage_taskplanner.dart';
import 'package:complete_ui_kit/apps/task_planner/taskplanner_Inbox.dart';
import 'package:complete_ui_kit/apps/task_planner/taskplanner_settings.dart';
import 'package:complete_ui_kit/config/constants.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavBarTaskPlanner extends StatefulWidget {
  const BottomNavBarTaskPlanner({Key? key}) : super(key: key);

  @override
  State<BottomNavBarTaskPlanner> createState() =>
      _BottomNavBarTaskPlannerState();
}

class _BottomNavBarTaskPlannerState extends State<BottomNavBarTaskPlanner> {
  int currentState = 0;
  List<Widget> widgets = [
    const HomePageTaskPlanner(),
    const CalendarTaskPlanner(),
    const TaskPlannerInbox(),
    const TaskPlannerSettings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.31,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              currentState = 0;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 9),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Main",
                                  style: TextStyle(
                                    color:
                                        currentState == 0 ? taskAppBlue : grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor:
                                      currentState == 0 ? taskAppBlue : white,
                                )
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    currentState = 1;
                                  },
                                );
                              },
                              icon: Icon(
                                LineIcons.table,
                                size: 30,
                                color: currentState == 1 ? taskAppBlue : grey,
                              ),
                            ),
                            CircleAvatar(
                              radius: 2,
                              backgroundColor:
                                  currentState == 1 ? taskAppBlue : white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.31,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    currentState = 2;
                                  },
                                );
                              },
                              icon: Icon(
                                LineIcons.suitcase,
                                size: 30,
                                color: currentState == 2 ? taskAppBlue : grey,
                              ),
                            ),
                            CircleAvatar(
                              radius: 2,
                              backgroundColor:
                                  currentState == 2 ? taskAppBlue : white,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    currentState = 3;
                                  },
                                );
                              },
                              icon: Icon(
                                LineIcons.clock,
                                size: 30,
                                color: currentState == 3 ? taskAppBlue : grey,
                              ),
                            ),
                            CircleAvatar(
                              radius: 2,
                              backgroundColor:
                                  currentState == 3 ? taskAppBlue : white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
      body: widgets[currentState],
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {},
        backgroundColor: taskAppBlue,
        child: const Icon(
          LineIcons.alternateList,
          size: 30,
        ),
      ),
    );
  }
}
