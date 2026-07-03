import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:midterm_exam/quiz1appdev.dart';
import 'main.dart';
import 'menu.dart';
import 'modulesappdev.dart';
import 'quizwelcome.dart';

class AppDevModule extends StatefulWidget {
  const AppDevModule({super.key});

  @override
  State<AppDevModule> createState() => _AppDevModuleState();
}

class _AppDevModuleState extends State<AppDevModule> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.only(top: 10),
          child: const Text(
            'Application Development and\nEmerging Technologies',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 13,
                color: Colors.white,
                fontFamily: 'Paneuropean',
                fontWeight: FontWeight.bold
            ),
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
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Container(
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Module1State()));
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                        child: RichText(
                          text: const TextSpan(
                              text: 'TOPIC 1\n',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Paneuropean',
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Emerging Technologies and Its Characteristics',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Paneuropean',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Module2State()));
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                        child: RichText(
                          text: const TextSpan(
                              text: 'TOPIC 2\n',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Paneuropean',
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Emerging Technology Areas                      ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gothic',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Quiz1AppDev()));
                      },
                      child: const Text(
                        'Quiz 1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Paneuropean'
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
                        if (isQuiz1AppDevPassed){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Module3()));
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
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                        child: RichText(
                          text: const TextSpan(
                              text: 'TOPIC 3\n',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Paneuropean',
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: 'The Fourth Industrial Revolution                    ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Paneuropean',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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
                        if (isQuiz1AppDevPassed){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Module4()));
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
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                        child: RichText(
                          text: const TextSpan(
                              text: 'TOPIC 4\n',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Paneuropean',
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Top Emerging Technologies in 2024              ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Paneuropean',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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
                        if (isQuiz1AppDevPassed){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Quiz2AppDev()));
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
                            fontFamily: 'Paneuropean'
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}