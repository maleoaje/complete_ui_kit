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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          children:  [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: _settingsCard(Icons.security_rounded,  'Security & Privacy', '11-07-2022', Colors.orange.withOpacity(0.1), orange),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: _settingsCard(Icons.mail_outlined,  'Messages', '11-07-2022', Colors.blue.withOpacity(0.1), blue),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: _settingsCard(Icons.music_video,  'Media', '11-07-2022', Colors.purple.withOpacity(0.1), Colors.purple),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: _settingsCard(Icons.theater_comedy,  'Theme Customizatuion', '11-07-2022', Colors.indigo.withOpacity(0.1), Colors.indigo),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: _settingsCard(Icons.help,  'Help', '11-07-2022', Colors.indigo.withOpacity(0.1), Colors.indigo),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: _settingsCard(Icons.privacy_tip,  'Privacy', '11-07-2022', Colors.pink.withOpacity(0.1), Colors.pink),
            ),
          ],
        ),
      )
    );
  }

  Widget _settingsCard(IconData appIcon, title, date,Color iconContainer, iconColor) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: white,
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: iconContainer),
                      child: Icon(appIcon, color: iconColor,)),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GlobalStyle.appTitleStyle,
                        ),
                        const SizedBox(height: 8,),
                        Text(
                          date,
                          style: GlobalStyle.dimText,
                        ),
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_right_rounded,
                  size: 35,
                  color: taskAppBlue,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }                                                   

}
