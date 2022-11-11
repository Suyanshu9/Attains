import 'package:flutter/material.dart';
import 'loginpage.dart';

class newPassword extends StatefulWidget {
  const newPassword({Key? key}) : super(key: key);

  @override
  State<newPassword> createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child:
          Column(
            children: [
              SizedBox(height: 250,),
              Icon(Icons.check_circle_outline_rounded,
              color: Colors.green,
                size: 100,
              ),

              SizedBox(height: 20,),

              Text('Reset Email Successfully Sent!',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 150,),
              TextButton(onPressed: (){
                Navigator.pop(context);
                Navigator.pop(context);

              }, child:
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 30,
                  fontWeight: FontWeight.w400,

                ),

              )
              )
            ],
          ),
        ),
      ),

    );
  }

  // loginpage() {}
}
