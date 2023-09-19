import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:save_app/components/passwordfields.dart';
import 'package:save_app/pages/reset_through_mail.dart';
import 'package:save_app/pages/reset_through_phone.dart';
import 'package:save_app/pages/signup_page.dart';
import 'package:save_app/components/constants.dart';

class LoginPage extends StatelessWidget {
  final Function()? onTap;

  LoginPage({super.key, this.onTap});

  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 114, 212, 2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Align(
                alignment: Alignment.topCenter,
                child: Center(
                    child: Container(
                      //container holding the logo
                        width: 200.0,
                        height: 150.0,
                        padding: EdgeInsets.all(20.0),
                        margin: EdgeInsets.all(50.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.black, width: 6.0),
                          image: DecorationImage(
                              image: AssetImage('lib/images/logo.png')),
                        )))),
            SizedBox(height: 20),

            //welcome back Text
            Text(
              'Welcome back',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            const SizedBox(height: 25),
            MyPassFields(
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(context: context,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
                        builder: (context)=> Container(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(selectopText,style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 30.0,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                  MaterialPageRoute( builder: (context)=> ResetPassMail(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey.shade200,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.mail_outline_outlined, size: 60.0,),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(resetEmail,style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                                        Text("Have Password OTP sent via E-mail"),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height:20.0),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                  MaterialPageRoute( builder: (context)=> ResetPassPhone(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey.shade200,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.phone_android_rounded, size: 60.0,),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(resetPhone,style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                                        Text("Have Password OTP sent via phone"),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),);
                    },
                    child: Text(
                      'Forgot PIN?',
                      style: TextStyle(color: Color.fromARGB(255, 0, 24, 1)),
                    ),
                    // style: TextStyle(color: Color.fromARGB(255, 0, 24, 1)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Sign In"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20.0),
                fixedSize: Size(150, 70),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                backgroundColor: Colors.black87,
                elevation: 15,
                side: BorderSide(color: Colors.black, width: 2),
              ),
            ),
            SizedBox(height: 50),

            TextButton(onPressed: () {
              Navigator.push(context,
                MaterialPageRoute( builder: (context)=> SignupScreen(),
              ),
              );
            },
                child: Text.rich(
                TextSpan(
                  text: 'Dont have an account?',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge,
                  children: const[
                    TextSpan(
                      text: ' Sign up',
                      style: TextStyle(color: Colors.blue),
                    )
                  ]),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
