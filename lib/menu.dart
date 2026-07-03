
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:intl/intl.dart';
import 'package:midterm_exam/about.dart';
import 'package:midterm_exam/result.dart';
import 'account.dart';
import 'appdevmodule.dart';
import 'main.dart';
import 'oopmodule.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        title: const Text('HOME',),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontFamily: 'Paneuropean',
          color: Colors.white,
          fontWeight: FontWeight.bold,
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
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Menu()));
              },
                icon: Image.asset('assets/icons/HomeActive.png'),
                iconSize: 40,
                color: Colors.black,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Results()));
              },
                icon: Image.asset('assets/icons/Result.png'),
                iconSize: 40,
                color: Colors.white,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Account()));
              },
                icon: Image.asset('assets/icons/User.png'),
                iconSize: 40,
                color: Colors.white,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const About()));
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
          Container(margin: const EdgeInsets.only(top: 30),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 250,
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text('Welcome Back,\nReanne!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Paneuropean',
                        fontSize: 32
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    width: 250,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      DateFormat('EEEE, MMMM d, y').format(DateTime.now()),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Paneuropean',
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    margin: const EdgeInsets.only(bottom: 30),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'SUBJECTS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 270,
                          height: 210,
                          margin: const EdgeInsets.only(left: 50),
                          decoration: BoxDecoration(
                              color: hexToColor('#01C38E').withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: TextButton(
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const AppDevModule()));
                            },
                            child: Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/ITE7SUBS.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  height: 100,
                                  width: 220,
                                  margin: const EdgeInsets.fromLTRB(0, 15, 0, 15)
                                ),
                                SizedBox(
                                  width: 220,
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      text: 'Application Development and Emerging Technologies\n',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Paneuropean',
                                          fontSize: 16
                                      ),
                                      children: [
                                        TextSpan(
                                            text: '(ITE7)',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w100,
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 50),
                          width: 270,
                          height: 210,
                          decoration: BoxDecoration(
                              color: hexToColor('#01C38E').withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: TextButton(
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const OOPModule()));
                            },
                            child: Column(
                              children: [
                                Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/IT7SUBS.jpg'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    height: 100,
                                    width: 220,
                                    margin: const EdgeInsets.fromLTRB(0, 15, 0, 15)
                                ),
                                SizedBox(
                                  width: 220,
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      text: 'Integrative Programming and Technologies\n',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Paneuropean',
                                          fontSize: 16
                                      ),
                                      children: [
                                        TextSpan(
                                            text: '(IT7)',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w100,
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}