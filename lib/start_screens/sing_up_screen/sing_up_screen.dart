import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toast/toast.dart';
import 'package:untitled6/start_screens/confirmation_screen/confirmation-screen.dart';

int cc=null;

var emailController2 = TextEditingController();

var passwordController2 = TextEditingController();

var usernameController = TextEditingController();

var phoneController = TextEditingController();




class SingUpScreen extends StatefulWidget {
  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {


  var globalKey = GlobalKey<FormState>();
  var usernameController = TextEditingController();

  bool obscure = true;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bac5.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Sing up',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sing up now and watch the news',
                      style: GoogleFonts.newsCycle(
                          color: Colors.white54, fontSize: 20),
                    ),
                  ],
                ),
                Text(''),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: globalKey,
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                          controller: usernameController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.white38,
                                width: 2.0,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.drive_file_rename_outline,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            labelText: "Name",
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          validator: (String value) {
                            if (value.isEmpty) return 'Enter your name';
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController2,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.white38,
                                width: 2.0,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          validator: (String value) {
                            if (value.isEmpty) return 'Enter your Email';
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        TextFormField(
                          obscureText: obscure,
                          cursorColor: Colors.white,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController2,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.white38,
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            labelText: "Password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                              icon: Icon(
                                obscure
                                    ? Icons.remove_red_eye_sharp
                                    : Icons.visibility_off,
                                color: Colors.white,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outlined,
                              color: Colors.white,
                            ),
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          validator: (String value) {
                            if (value.isEmpty) return 'Enter new Password';
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.phone,
                          controller: phoneController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.white38,
                                width: 2.0,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            labelText: "Phone",
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          validator: (String value) {
                            if (value.isEmpty) return 'Enter your number';
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: MaterialButton(
                    onPressed: () {

                      if (globalKey.currentState.validate()) {

                        cc=1;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConfirmationScreen()));
                      }
                      else Toast.show(
                        "Fill in the data",
                        context,
                        duration: Toast.LENGTH_LONG,
                        gravity: Toast.CENTER,
                        backgroundColor: Colors.red[700],
                        textColor: Colors.white,
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25)),
                    minWidth: double.infinity,
                    height: 60,
                    elevation: 10,
                    color: Colors.white,
                    child: Text(
                      'Sing up',
                      style: GoogleFonts.lora(
                          fontSize: 29,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
