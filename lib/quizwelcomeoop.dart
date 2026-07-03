import 'package:flutter/material.dart';
import 'package:midterm_exam/main.dart';
import 'package:midterm_exam/quiz1appdev.dart';
import 'package:midterm_exam/quiz1oop.dart';

class Quiz1OOPWelc extends StatefulWidget {
  const Quiz1OOPWelc({super.key});

  @override
  State<Quiz1OOPWelc> createState() => _Quiz1OOPWelcState();
}

class _Quiz1OOPWelcState extends State<Quiz1OOPWelc>
    with TickerProviderStateMixin{

  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    _navigateToNewScreen(); // Call the method to navigate to a new screen after animation completes
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _navigateToNewScreen() async {
    // Wait for the animation to complete
    await Future.delayed(const Duration(seconds: 4));

    // Navigate to the new screen with transition effect
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 1000),
        pageBuilder: (_, __, ___) =>  const QuizWelcome(),
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/welcomebg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Image.asset('assets/intelogquiz.png',
                    height: 220,),
                ),
                const CircularProgressIndicator(
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuizWelcome extends StatelessWidget {
  const QuizWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/welcomebg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 160, 0, 10),
                  child: Image.asset('assets/intelogquiz.png',
                    height: 220,),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text('Welcome to intelleXcelQuiz!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Gothic',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width: 250,
                  child: const Text('To unlock the next module, you must successfully complete a multiple-choice quiz focusing on modules 1 and 2. You\'ll need to score at least 3 out of 5 to unlock the next module.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Gothic',
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          hexToColor('#01c28d'),hexToColor('#01c28d').withOpacity(0.8),hexToColor('#01c28d').withOpacity(0.5),hexToColor('#000000')
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  child:  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                      elevation: MaterialStatePropertyAll<double>(0),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Quiz1OOP()));
                    },
                    child: const Text('TAKE QUIZ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gothic'
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


