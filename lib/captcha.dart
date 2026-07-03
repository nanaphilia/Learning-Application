import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'menu.dart';

class Captcha extends StatefulWidget {
  const Captcha({super.key});

  @override
  CaptchaState createState() => CaptchaState();
}

class CaptchaState extends State<Captcha> {
  late String captcha = 'Captcha';
  late TextEditingController captchaController = TextEditingController(); // Initialize with an empty TextEditingController

  @override
  void initState() {
    super.initState();
    captcha = generateCaptcha();
  }

  @override
  void dispose() {
    captchaController.dispose();
    super.dispose();
  }

  String generateCaptcha() {
    final Random random = Random();
    const String chars = 'abcdefghijklmnopqrstuvwxyz';
    return List.generate(6, (index) => chars[random.nextInt(chars.length)]).join();
  }

  void verifyCaptcha(String enteredCaptcha) {
    if (enteredCaptcha.toLowerCase() == captcha.toLowerCase()) {
      // Correct captcha
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: hexToColor('#01C38E'),
            content: const Text('\n\nWould you like to proceed?\n',
              textAlign: TextAlign.center,),
            contentTextStyle: const TextStyle(
              fontFamily: 'Gothic',
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.withOpacity(0.7),Colors.white,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('BACK',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            hexToColor('#01C38E'),Colors.black.withOpacity(0.7),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const Menu())
                        );
                      },
                      child: const Text('PROCEED',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      );
    } else {
      // Incorrect captcha
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Theme(
            data: Theme.of(context).copyWith(dialogBackgroundColor: hexToColor('#01C38E')),
            child: AlertDialog(
              content: const Text('\nIncorrect captcha\nPlease try again.',
                textAlign: TextAlign.center,),
              contentTextStyle: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Gothic',
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
              actions: <Widget>[
                Center(
                  child: Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.withOpacity(0.7),Colors.white.withOpacity(0.5),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/captchabg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Image.asset('assets/intelog.png',
                    height: 170,),
                  Container(
                    width: 260,
                    child: const Text('CAPTCHA LOG-IN',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Paneuropean',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                  Container(
                    width: 260,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: const Text('Please enter the captcha below.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      )),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 20),
                        hintText: captcha.toString(),
                        hintStyle: const TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Paneuropean'
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color:hexToColor('#BF0000'),
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: const Text('CAPTCHA CODE',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Paneuropean',
                        fontSize: 10,
                        fontWeight: FontWeight.w200,
                      ),),
                  ),
                  Container(
                    width: 250,
                    margin: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.centerLeft,
                    child: Text('ENTER CAPTCHA:',
                      style: TextStyle(
                          color: hexToColor('#e9e9e9'),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          fontSize: 15
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      width: 250,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: hexToColor('#e9e9e9').withOpacity(0.8),
                          border: Border.all(color: hexToColor('#e9e9e9').withOpacity(0.8),
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextFormField(
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Paneuropean',
                          ),
                          controller: captchaController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(14, 0, 0, 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: hexToColor('#F4F2F2'),
                          width: 1
                      ),
                      gradient: LinearGradient(
                        colors: [hexToColor('#01C28D'),hexToColor('#002B1F')],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(onPressed: (){
                      verifyCaptcha(captchaController.text);
                    },
                        child: const Text('SUBMIT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Paneuropean',
                              fontSize: 13,
                              letterSpacing: 2,
                            ))),
                  ),
                  Container(
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: hexToColor('#f4f2f2'),
                          width: 1
                      ),
                      gradient: LinearGradient(
                        colors: [Colors.white,hexToColor('#7C7D7D')],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(onPressed: (){
                      setState(() {
                        captcha = generateCaptcha();
                        captchaController.clear();
                      });
                    },
                        child: const Text('GENERATE NEW CODE',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Paneuropean',
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2
                            ))),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}