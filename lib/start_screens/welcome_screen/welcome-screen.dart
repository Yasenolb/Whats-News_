import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/start_screens/login_screen/login-screen.dart';
import 'package:untitled6/start_screens/sing_up_screen/sing_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bac4.jpg"), fit: BoxFit.cover)),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Whats News', style: TextStyle(fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),),
                      Text('SEE THE WORLD',style: GoogleFonts.newsCycle(color: Colors.white54,fontSize: 20),),
                    ],
                  ),

                  Text(''),

                  Column(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingInScreen()));
                        },
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25),
                        ),
                        height: 60,
                        elevation: 10,
                        color: Colors.white,
                        child: Text(
                          'Sing In',
                          style: GoogleFonts.lora(
                              fontSize: 33, color: Colors.blueGrey[800]),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingUpScreen()));
                        },
                        minWidth: double.infinity,
                        height: 60,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25),
                          side: BorderSide(color: Colors.white, width: 2.0),
                        ),
                        child: Text(
                          'Sing up',
                          style: GoogleFonts.lora(
                              fontSize: 33,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ],
            ),
          ),
        ));
  }
}
