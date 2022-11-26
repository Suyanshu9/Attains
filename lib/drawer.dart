
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: Container(
      color: Colors.transparent,
      child: SingleChildScrollView(

        child: Column(

          children: [
            buildHeader(context),
            buildMenuItems(context),

          ],
        ),
      ),
    ),
  );

  buildHeader(BuildContext context) => Container(
    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
  );
  buildMenuItems(BuildContext context) => Container(

    child: Column(
      children:  [
        Padding(
          padding: const EdgeInsets.fromLTRB(10,100,10,0),
          child: Container(
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.white, width: 1),

            ),
            child: ListTile(
              leading: Icon(Icons.power_settings_new_rounded,size: 40,color: Colors.white,),
              title: Text('Sign Out',
                style: GoogleFonts.sourceCodePro(
                  textStyle: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
                onTap: (){
                  FirebaseAuth.instance.signOut();

              },
            ),
          ),
        ),
        // Divider(color: Colors.white,),

      ],
    ),
  );
}
