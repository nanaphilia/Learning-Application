import 'package:flutter/material.dart';

import 'captcha.dart';
import 'main.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  final username = TextEditingController();
  final password = TextEditingController();

  void login() {
    const String validUser = "admin";
    const String validPass = "admin";

    String enteredUsername = username.text;
    String enteredPassword = password.text;
    if (enteredUsername == validUser && enteredPassword == validPass) {
      showDialog(
        context: context,
        builder: (context) {
          return Theme(
            data: Theme.of(context).copyWith(dialogBackgroundColor: hexToColor('#01C38E')),
            child: AlertDialog(
              content: const Text('\nLogin Successful!\n',
                textAlign: TextAlign.center,),
              contentTextStyle: const TextStyle(
                fontSize: 20,
                fontFamily: 'Gothic',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              actions: [
                Center(
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
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
                        Navigator.pop(context); // Dismiss the dialog
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Captcha()),
                        );
                      },
                      child: const Text('OK',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: hexToColor('#01c28d'),
            elevation: 0,
            content: const Text('\n\nInvalid Username or password\nPlease Try Again.\n',
                textAlign: TextAlign.center),
            contentTextStyle: const TextStyle(
              color: Colors.black,
              fontFamily: 'Gothic',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            actions: [
              Center(
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
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
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              )
            ],
          );
        },
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration:  const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/altbg3.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              child: Center(
                child: SizedBox(
                  width: 270,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/intelog.png',
                          height: 230),
                      Text('Discover, Learn, Succeed with intelleXcel!',
                          style: TextStyle(
                            color: hexToColor('#e9e9e9'),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Paneuropean',
                            fontSize: 13,
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(top: 20),
                          child: Text('LOG IN',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Paneuropean',
                                fontWeight: FontWeight.bold,
                                color: hexToColor('#e9e9e9'),
                              ))),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text('Please sign in to continue.',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Paneuropean',
                                color: hexToColor('#e9e9e9'),
                              )
                          )
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                        alignment: Alignment.centerLeft,
                        child: Text('USERNAME',
                          style: TextStyle(
                              color: hexToColor('#e9e9e9'),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gothic',
                              fontSize: 15
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gothic',
                          ),
                          controller: username,
                          decoration: InputDecoration(
                            focusedBorder:  const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: hexToColor('#e9e9e9').withOpacity(0.7)
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(30)),
                            ),
                            filled: true,
                            fillColor: hexToColor('#E9E9E9').withOpacity(0.7),
                            contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                        alignment: Alignment.centerLeft,
                        child: Text('PASSWORD',
                          style: TextStyle(
                            color: hexToColor('#e9e9e9'),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gothic',
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gothic',
                          ),
                          controller: password,
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder:  const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: hexToColor('#e9e9e9').withOpacity(0.7)
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(30)),
                            ),
                            filled: true,
                            fillColor: hexToColor('#E9E9E9').withOpacity(0.7),
                            contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                          ),
                        ),
                      ),
                      Container(
                        width: 270,
                        height: 40,
                        margin: const EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: hexToColor('#ffffff')
                            ),
                            gradient: LinearGradient(
                              colors: [
                                hexToColor('#01c28d'),hexToColor('#000000'),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )
                        ),
                        child: TextButton( child:
                        const Text('SIGN IN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          ),),
                          onPressed: (){
                            login();
                          },),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
