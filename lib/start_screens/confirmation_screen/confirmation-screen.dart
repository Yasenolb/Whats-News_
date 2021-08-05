import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:toast/toast.dart';
import 'package:untitled6/Home_layout.dart';
import 'package:untitled6/sherd_page/page_cubit.dart';

class ConfirmationScreen extends StatefulWidget {
  @override
  ConfirmationScreenState createState() => ConfirmationScreenState();
}

class ConfirmationScreenState extends State<ConfirmationScreen> {
  var confirmation = TextEditingController();

  var random = Random().nextInt(9000) + 1000.toInt();

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
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your activation code is",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  random.toString(),
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PinCodeTextField(
                  blinkDuration: Duration(milliseconds: 2000),
                  cursorHeight: 5,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textStyle: TextStyle(color: Colors.green[700]),
                  autoFocus: true,
                  enabled: true,
                  pinTheme: PinTheme(
                    borderRadius: BorderRadius.circular(20),
                    disabledColor: Colors.white,
                    inactiveColor: Colors.white,
                    shape: PinCodeFieldShape.circle,
                    fieldHeight: 50.0,
                    fieldWidth: 80.0,
                  ),
                  cursorColor: Colors.blue,
                  onCompleted: (output) {
                    if (confirmation.text == random.toString()) {
                      ModCubit3.get(context).changPage();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomeLayout()),
                          (route) => false);
                    } else
                      Toast.show(
                        "The code is wrong",
                        context,
                        duration: Toast.LENGTH_LONG,
                        gravity: Toast.CENTER,
                        backgroundColor: Colors.red[700],
                        textColor: Colors.white,
                      );
                  },
                  animationCurve: Curves.easeInOut,
                  autoDismissKeyboard: true,
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  animationDuration: const Duration(milliseconds: 200),
                  controller: confirmation,
                  onChanged: (String value) {},
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
