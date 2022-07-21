import 'package:complete_ui_kit/config/constants.dart';
import 'package:flutter/material.dart';

class CalendarTaskPlanner extends StatefulWidget {
  const CalendarTaskPlanner({Key? key}) : super(key: key);

  @override
  State<CalendarTaskPlanner> createState() => _CalendarTaskPlannerState();
}

class _CalendarTaskPlannerState extends State<CalendarTaskPlanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: const Center(child: Text('Calendar'),),
    );
  }
}
