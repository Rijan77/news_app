import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginpage2 extends StatefulWidget {
  const Loginpage2({super.key});

  @override
  State<Loginpage2> createState() => _Loginpage2State();
}

class _Loginpage2State extends State<Loginpage2> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC9CCD5),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Icon(
                Icons.lock,
                size: 120,
              ),
            )),
            SizedBox(
              height: 70,
            ),
            Text(
              "Welcome back you've been missed!",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 370,
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      prefix: Padding(
                        padding: const EdgeInsets.only(right: 20, top: 5),
                        child: FaIcon(
                          FontAwesomeIcons.envelope,
                          size: 20,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.6)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                            width: 2.6,
                          )),
                      labelText: "Email",
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    obscureText: _isObscure,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      prefix: Padding(
                        padding: const EdgeInsets.only(right: 20, top: 5),
                        child: FaIcon(
                          FontAwesomeIcons.key,
                          size: 20,
                        ),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.6)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.blueGrey, width: 2.6)),
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 210),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 60),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(5)) // Set the width and height
                  ),
            ),
            SizedBox(
              height: 55,
            ),
            Text(
              "--------------Or continue with--------------",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Image.asset("images/Google_Icons.webp"),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Image.asset("images/facebook_icon.webp"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 90),
              child: Row(
                children: [
                  Text(
                    "Not a Member?   ",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
