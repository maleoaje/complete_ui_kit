import 'package:complete_ui_kit/apps/task_planner/auth/forgot_password.dart';
import 'package:complete_ui_kit/apps/task_planner/auth/sign_up.dart';
import 'package:complete_ui_kit/apps/task_planner/bottom_nav_bar.dart';
import 'package:complete_ui_kit/config/constants.dart';
import 'package:complete_ui_kit/config/global_style.dart';

import 'package:flutter/material.dart';

class LogInTaskApp extends StatefulWidget {
  const LogInTaskApp({Key? key}) : super(key: key);

  @override
  State<LogInTaskApp> createState() => _LogInTaskAppState();
}

class _LogInTaskAppState extends State<LogInTaskApp> {
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
              "Log In.",
              style: GlobalStyle.taskAppTitleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Sign in to your account",
              style: GlobalStyle.dimText,
            ),
            const SizedBox(
              height: 10,
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
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BottomNavBarTaskPlanner()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 6, 50, 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Log in',
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
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ForgotPasswordTaskApp()));
                  },
                  child: Text(
                    " Forgot Password",
                    style: GlobalStyle.dimText,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GlobalStyle.normalText,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUpTaskPlanner()));
                  },
                  child: Text(
                    " Sign Up.",
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
