import 'package:complete_ui_kit/config/constants.dart';
import 'package:complete_ui_kit/config/global_style.dart';
import 'package:flutter/material.dart';

class ForgotPasswordTaskApp extends StatefulWidget {
  const ForgotPasswordTaskApp({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordTaskApp> createState() => _ForgotPasswordTaskAppState();
}

class _ForgotPasswordTaskAppState extends State<ForgotPasswordTaskApp> {
  final TextEditingController _etEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: taskAppBlue,
        elevation: 1,
        title: Text(
          'Forgot Password',
          style: TextStyle(color: white),
        ),
        centerTitle: false,
      ),
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
        child: Column(
          children: [
            const Center(
              child: Image(
                image: AssetImage('assets/plannericon.png'),
                width: 110,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Enter the email you signed up with and a reset link will be sent to that email",
              style: GlobalStyle.normalText,
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
                      'Reset Password',
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
          ],
        ),
      ),
    );
  }
}
