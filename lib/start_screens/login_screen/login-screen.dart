import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toast/toast.dart';
import 'package:untitled6/Home_layout.dart';
import 'package:untitled6/sherd_page/page_cubit.dart';
import 'package:untitled6/start_screens/sing_up_screen/sing_up_screen.dart';


class SingInScreen extends StatefulWidget {
  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  bool obscure = true;
  var globalKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Log in now and watch the news',
                        style: GoogleFonts.newsCycle(
                            color: Colors.white54, fontSize: 20),
                      ),
                    ],
                  ),
                  Text(''),
                  Form(
                    key: globalKey,
                    child: Column(
                      children: [
                        TextFormField(
                            cursorColor: Colors.white,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
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
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                            obscureText: obscure,
                            cursorColor: Colors.white,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.visiblePassword,
                            controller: passwordController,
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
                              if (value.isEmpty) return 'Enter your Password';
                              return null;
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(25)),
                              elevation: 10,
                              onPressed: () {
                                if (cc != null) {
                                  ModCubit3.get(context).changPage();
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeLayout()),
                                      (route) => false);
                                } else
                                  Toast.show(
                                    "Sign up first",
                                    context,
                                    duration: Toast.LENGTH_LONG,
                                    gravity: Toast.TOP,
                                    backgroundColor: Colors.red[700],
                                    textColor: Colors.white,
                                  );
                              },
                              minWidth: double.infinity,
                              height: 60,
                              color: Colors.white,
                              child: Text(
                                'Login',
                                style: GoogleFonts.lora(
                                  fontSize: 29,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
