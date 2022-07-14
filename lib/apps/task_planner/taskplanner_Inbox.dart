import 'package:complete_ui_kit/config/constants.dart';
import 'package:flutter/material.dart';

class TaskPlannerInbox extends StatefulWidget {
  const TaskPlannerInbox({Key? key}) : super(key: key);

  @override
  State<TaskPlannerInbox> createState() => _TaskPlannerInboxState();
}

class _TaskPlannerInboxState extends State<TaskPlannerInbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: white,
        elevation: 0,
        title: Text(
          "Settings",
          style: TextStyle(
            color: taskAppBlue,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            //icon, name, date, ending icon
            children: [
              Container(
                padding: const EdgeInsets.all(
                  8,
                ),
                color: green,
                child: const Icon(
                  Icons.location_on,
                ),
              ),
              const Text(
                'Account',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
