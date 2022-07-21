import 'package:complete_ui_kit/config/constants.dart';
import 'package:complete_ui_kit/config/global_style.dart';
import 'package:flutter/material.dart';

class TaskPlannerInbox extends StatefulWidget {
  const TaskPlannerInbox({Key? key}) : super(key: key);

  @override
  State<TaskPlannerInbox> createState() => _TaskPlannerInboxState();
}

class _TaskPlannerInboxState extends State<TaskPlannerInbox> {
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
          "Inbox",
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
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(8, 10, 02, 10),
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            decoration:  BoxDecoration(color: white),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextFormField(
                textInputAction: TextInputAction.search,
                onFieldSubmitted: (value) async {
                },
                cursorColor: taskAppBlue,
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                controller: _etSearch,
                style: GlobalStyle.taskAppNormalText,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  hintText: 'Search...',
                  hintStyle:  TextStyle(color: grey, fontSize: 14),
                  prefixIcon: IconButton(
                      onPressed: () async {
                      },
                      icon:  Icon(
                        Icons.search_rounded,
                        color: taskAppBlue,
                      )),
                  border: InputBorder.none,
                  filled: true,
                  focusColor: white,
                  fillColor: white,
                  hoverColor: white,
                  focusedBorder:  OutlineInputBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      borderSide: BorderSide(color: white, width: 0)),
                  enabledBorder:  OutlineInputBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      borderSide: BorderSide(color: white, width: 0)),
                ),
              ),
            ),
          ),const SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: InkWell(
              onTap: () {
                setState(() {
                select=1;
              });
              },
              child: inboxCard('https://images.unsplash.com/photo-1592899436439-922fd192294c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
               'Amina',
                'Designer',
                 '6:20 PM',
                  'Effective Adsvertising Pointers',
                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris',),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: InkWell(
              onTap: () {
                setState(() {
                select=2;
              });
              },
              child: inboxCard('https://images.unsplash.com/photo-1592899436439-922fd192294c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
               'Amina',
                'Designer',
                 '6:20 PM',
                  'Effective Adsvertising Pointers',
                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris',),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: InkWell(
              onTap: () {
                setState(() {
                select=3;
              });
              },
              child: inboxCard('https://images.unsplash.com/photo-1592899436439-922fd192294c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
               'Amina',
                'Designer',
                 '6:20 PM',
                  'Effective Adsvertising Pointers',
                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris',),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: InkWell(
              onTap: () {
                setState(() {
                select=4;
              });
              },
              child: inboxCard('https://images.unsplash.com/photo-1592899436439-922fd192294c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
               'Amina',
                'Designer',
                 '6:20 PM',
                  'Effective Adsvertising Pointers',
                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris',),
            ),
          ),
        ],
      )
    );
  }

  Widget inboxCard(String image, name, role, time,title,description){
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      decoration: BoxDecoration(
        color:  clicked == select ? white : literGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                Container(
                    height: 55 ,
                    width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.cover),
                  ),
                  child: Stack(
                    children:  [
                      Positioned(
                        right: 1 ,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: literGrey ,
                          child:  CircleAvatar(
                          radius: 5,
                          backgroundColor: green ,
                        ),
                        ),
                      )
                    ],
                  ),),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,style: GlobalStyle.headerStyle,),
                      const SizedBox(height: 8,),
                      Text(role,style: GlobalStyle.dimText,)
                    ],
                  ),
              ],
            ), Container(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(time,style: GlobalStyle.taskAppNormalText,),),
          ],
          ),
          const SizedBox(height: 16,),
          Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,style: GlobalStyle.headerStyle,),
                      const SizedBox(height: 8,),
                      Text(description,style: GlobalStyle.dimText,)
                    ],
                  ),
        ],
      ),
    ); 
  } 

}
