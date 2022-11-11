import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leave_application/Pages/newPassword.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  final otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 270,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                'Reset\nPassword',
                style: GoogleFonts.lato(
                  color: Colors.cyan,
                  fontSize: 30,
                ),
              ),
            ),
            // Text(
            //   'PASSWORD',
            //   style: GoogleFonts.lato(
            //     color: Colors.cyan,
            //     fontSize: 30,
            //   ),
            // ),
            const SizedBox(height: 50,),
            Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "Email",
                          )
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 70,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.cyan,
                  radius: 25,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => newPassword()),
                      );

                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
