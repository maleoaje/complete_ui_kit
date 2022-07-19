import 'package:complete_ui_kit/config/constants.dart';
import 'package:complete_ui_kit/config/global_style.dart';
import 'package:flutter/material.dart';

class TaskPlannerSettings extends StatefulWidget {
  const TaskPlannerSettings({Key? key}) : super(key: key);

  @override
  State<TaskPlannerSettings> createState() => _TaskPlannerSettingsState();
}

class _TaskPlannerSettingsState extends State<TaskPlannerSettings> {
  final TextEditingController _etSearch = TextEditingController();
  int clicked=0;
  int select=1;
  Color activeBg = white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: white,
        elevation: 0,
        leading: IconButton(icon:  Icon(Icons.arrow_back_ios_new, color: taskAppBlue, size: 18, ),onPressed: (){
          Navigator.pop(context);
        },),
        title: Text(
          "Settings",
          style: TextStyle(
            color: taskAppBlue,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions:  [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.more_horiz_rounded, color: taskAppBlue,),
        ),],
      ),
      body: ListView(
        children: const [
          
        ],
      )
    );
  }

  Widget _buildAppViewCard(IconData appIcon, title, date) {
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
