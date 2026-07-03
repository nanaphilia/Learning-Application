

import 'package:flutter/material.dart';
import 'package:midterm_exam/menu.dart';
import 'package:midterm_exam/quiz1appdev.dart';
import 'package:midterm_exam/quiz1oop.dart';
import 'about.dart';
import 'account.dart';
import 'main.dart';



class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {

  Color backgroundColor = hexToColor('#000000').withOpacity(0.4);
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.only(top: 5),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'RESULT SUMMARY',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Paneuropean',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Menu()),
            );
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
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/nightmode.png',
                color: hexToColor('#01C38E'),
              ),
              iconSize: 23,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Menu()));
              },
                icon: Image.asset('assets/icons/Home.png'),
                iconSize: 40,
                color: Colors.black,),
              IconButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Results()));
              },
                icon: Image.asset('assets/icons/ResultActive.png'),
                iconSize: 40,
                color: Colors.white,),
              IconButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Account()));
              },
                icon: Image.asset('assets/icons/User.png'),
                iconSize: 40,
                color: Colors.white,),
              IconButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const About()));
              },
                icon: Image.asset('assets/icons/About.png'),
                iconSize: 40,
                color: Colors.white,),
            ],
          )),
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
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  width: 250,
                  child: Text('My Subjects',
                    style: TextStyle(
                      color: hexToColor('#01c38e'),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Paneuropean',
                      fontSize: 30,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.resolveWith(
                                (states) {
                              return states.contains(MaterialState.pressed)
                                  ? hexToColor('#01c38e').withOpacity(0.4)
                                  : null;
                            },
                          ),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          backgroundColor: MaterialStatePropertyAll(hexToColor('#000000').withOpacity(0.4)),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultAppDev()));
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 200,
                              height: 100,
                              margin: const EdgeInsets.only(top: 20),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/ITE7SUBS.jpg'),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                              width: 200,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: 'Application Development and Emerging Technologies\n',
                                    style: TextStyle(
                                      color: hexToColor('#e9e9e9'),
                                      fontFamily: 'Paneuropean',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: const [
                                      TextSpan(
                                          text: '(ITE 7)',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                          )
                                      )
                                    ]
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                            (states) {
                          return states.contains(MaterialState.pressed)
                              ? hexToColor('#01c38e').withOpacity(0.4)
                              : null;
                        },
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      backgroundColor: MaterialStatePropertyAll(hexToColor('#000000').withOpacity(0.4)),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResultOOP()));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 100,
                          margin: const EdgeInsets.only(top: 20),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/IT7SUBS.jpg'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                          width: 200,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'Integrative Programming and Technologies\n',
                                style: TextStyle(
                                  color: hexToColor('#e9e9e9'),
                                  fontFamily: 'Paneuropean',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: const [
                                  TextSpan(
                                      text: '(IT7)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      )
                                  )
                                ]
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}