
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:midterm_exam/modulesappdev.dart';
import 'package:midterm_exam/moodulesoop.dart';
import 'package:midterm_exam/quiz1oop.dart';
import 'package:midterm_exam/quizwelcome.dart';
import 'package:midterm_exam/quizwelcomeoop.dart';

import 'main.dart';
import 'menu.dart';

class OOPModule extends StatelessWidget {
  const OOPModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Integrative Programming\nand Technologies',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontFamily: 'Gothic',
              fontWeight: FontWeight.bold
          ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Menu()));
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 40,
          padding: const EdgeInsets.only(left: 10),
        ),
        actions: [
          Container(
            height: 40,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: hexToColor('#01C38E'),
                  width: 1,
                )
            ),
            child: IconButton(onPressed: (){},
              icon: Image.asset('assets/nightmode.png',
                color: hexToColor('#01C38E'),),
              iconSize: 23,),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg3.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Module1OOPState()));
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    alignment: Alignment.centerLeft,
                    height: 90,
                    width: 300,
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: CupertinoColors.inactiveGray)
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Module1OOPState()));
                      },
                      child: RichText(
                        text: const TextSpan(
                            text: 'Lesson 1\n ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gothic',
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(
                                text: 'Java Program',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Gothic',
                                  fontSize: 12,
                                ),
                              )
                            ]
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Module2OOP()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    alignment: Alignment.centerLeft,
                    height: 90,
                    width: 300,
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: CupertinoColors.inactiveGray)
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Module2OOP()));
                      },
                      child: RichText(
                        text: const TextSpan(
                            text: 'Lesson 2\n ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gothic',
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(
                                text: 'Operators                      ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Gothic',
                                  fontSize: 12,
                                ),
                              )
                            ]
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: hexToColor('#000000').withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: CupertinoColors.inactiveGray)
                  ),
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Quiz1OOPWelc()));
                    },
                    child: const Text(
                      'Quiz 1',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Gothic'
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  alignment: Alignment.centerLeft,
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                      color: hexToColor('#000000').withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: CupertinoColors.inactiveGray)
                  ),
                  child: TextButton(
                    onPressed: (){
                      if (isQuiz1OOPPassed){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Module3OOP()));
                      }
                      else{
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: hexToColor('#01c28d'),
                              content: const Text('\n\nYou need to pass Quiz 1 first!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Gothic',
                                  fontSize: 15,
                                ),
                              ),
                              actions: [
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            hexToColor('#7c7d7d'),hexToColor('#ffffff').withOpacity(0.3)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1,
                                        )
                                    ),
                                    width: 130,
                                    height: 40,
                                    child: ElevatedButton(
                                      style: const ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                                        elevation: MaterialStatePropertyAll(0),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('OK',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Gothic',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: RichText(
                      text: const TextSpan(
                          text: 'Lesson 3\n ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gothic',
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: 'Input                  ',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gothic',
                                fontSize: 12,
                              ),
                            )
                          ]
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  alignment: Alignment.centerLeft,
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                      color: hexToColor('#000000').withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: CupertinoColors.inactiveGray)
                  ),
                  child: TextButton(
                    onPressed: (){
                      if (isQuiz1OOPPassed){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Module4OOP()));
                      }
                      else{
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: hexToColor('#01c28d'),
                              content: const Text('\n\nYou need to pass Quiz 1 first!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Gothic',
                                  fontSize: 15,
                                ),
                              ),
                              actions: [
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            hexToColor('#7c7d7d'),hexToColor('#ffffff').withOpacity(0.3)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1,
                                        )
                                    ),
                                    width: 130,
                                    height: 40,
                                    child: ElevatedButton(
                                      style: const ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                                        elevation: MaterialStatePropertyAll(0),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('OK',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Gothic',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: RichText(
                      text: const TextSpan(
                          text: 'Lesson 4\n ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gothic',
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: 'Conditional Statements              ',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gothic',
                                fontSize: 12,
                              ),
                            )
                          ]
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: hexToColor('#000000').withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: CupertinoColors.inactiveGray)
                  ),
                  child: TextButton(
                    onPressed: (){
                      if (isQuiz1OOPPassed){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Quiz1OOPWelc()));
                      }
                      else{
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: hexToColor('#01c28d'),
                              content: const Text('\n\nYou need to pass Quiz 1 first!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Gothic',
                                  fontSize: 15,
                                ),
                              ),
                              actions: [
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            hexToColor('#7c7d7d'),hexToColor('#ffffff').withOpacity(0.3)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1,
                                        )
                                    ),
                                    width: 130,
                                    height: 40,
                                    child: ElevatedButton(
                                      style: const ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                                        elevation: MaterialStatePropertyAll(0),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('OK',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Gothic',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text(
                      'Quiz 2',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Gothic'
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}