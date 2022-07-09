import 'package:complete_ui_kit/apps/task_planner/auth/sign_in.dart';
import 'package:complete_ui_kit/config/constants.dart';
import 'package:complete_ui_kit/config/global_style.dart';

import 'package:flutter/material.dart';

class SignUpTaskPlanner extends StatefulWidget {
  const SignUpTaskPlanner({Key? key}) : super(key: key);

  @override
  State<SignUpTaskPlanner> createState() => _SignUpTaskPlannerState();
}

class _SignUpTaskPlannerState extends State<SignUpTaskPlanner> {
  final TextEditingController _etName = TextEditingController();
  final TextEditingController _etEmail = TextEditingController();
  final TextEditingController _etPass = TextEditingController();

  bool _obscureText = true;
  IconData _iconVisible = Icons.visibility_off;
  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText == true) {
        _iconVisible = Icons.visibility_off;
      } else {
        _iconVisible = Icons.visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 60, 25, 10),
        child: Column(
          children: [
            const Center(
              child: Image(
                image: AssetImage('assets/plannericon.png'),
                width: 110,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Create An Account.",
              style: GlobalStyle.taskAppTitleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Sign up to continue",
              style: GlobalStyle.dimText,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Enter Name";
                  return null;
                },
                textInputAction: TextInputAction.next,
                cursorColor: taskAppBlue,
                textAlign: TextAlign.start,
                keyboardType: TextInputType.emailAddress,
                controller: _etName,
                style: TextStyle(color: taskAppBlue, fontSize: 14),
                decoration: InputDecoration(
                  // Enabled Border
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.1),
                  ),
                  // Focused Border
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.2),
                  ),
                  // Error Border
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.1),
                  ),
                  // Focused Error Border
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.2),
                  ),
                  fillColor: const Color.fromARGB(255, 226, 225, 225),
                  // focusedBorder: const UnderlineInputBorder(),
                  // enabledBorder: const UnderlineInputBorder(),
                  hintText: 'Name',
                  hintStyle: GlobalStyle.dimTextInputText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Enter Email";
                  return null;
                },
                textInputAction: TextInputAction.next,
                cursorColor: taskAppBlue,
                textAlign: TextAlign.start,
                keyboardType: TextInputType.emailAddress,
                controller: _etEmail,
                style: TextStyle(color: taskAppBlue, fontSize: 14),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.mail,
                    color: liteGrey,
                  ),
                  // Enabled Border
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.1),
                  ),
                  // Focused Border
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.2),
                  ),
                  // Error Border
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.1),
                  ),
                  // Focused Error Border
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.2),
                  ),
                  fillColor: const Color.fromARGB(255, 226, 225, 225),
                  hintText: 'Email',
                  hintStyle: GlobalStyle.dimTextInputText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Enter Password";
                  return null;
                },
                textInputAction: TextInputAction.next,
                cursorColor: taskAppBlue,
                obscureText: _obscureText,
                textAlign: TextAlign.start,
                keyboardType: TextInputType.emailAddress,
                controller: _etPass,
                style: TextStyle(color: taskAppBlue, fontSize: 14),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(_iconVisible, color: liteGrey, size: 20),
                      onPressed: () {
                        _toggleObscureText();
                      }),
                  // Enabled Border
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.1),
                  ),
                  // Focused Border
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.2),
                  ),
                  // Error Border
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.1),
                  ),
                  // Focused Error Border
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: dimGrey, width: 0.2),
                  ),
                  fillColor: const Color.fromARGB(255, 226, 225, 225),
                  hintText: 'Password',
                  hintStyle: GlobalStyle.dimTextInputText,
                ),
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(8),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) => taskAppBlue,
                ),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 6, 50, 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create an account',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GlobalStyle.normalText,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LogInTaskApp()));
                  },
                  child: Text(
                    " Login.",
                    style: GlobalStyle.taskAppNormalText,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
