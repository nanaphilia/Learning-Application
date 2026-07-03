import 'package:flutter/material.dart';
import 'package:midterm_exam/menu.dart';
import 'package:midterm_exam/quiz1appdev.dart';
import 'package:midterm_exam/welcome.dart';

bool isQuiz1AppDevPassed = false;
bool isQuiz1OOPPassed = false;
QuizPage quizPage = const QuizPage();
int correctAnswers = quizPage.createState().getCorrectAnswers();

void main() {
  runApp(const Home());

}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProgressIndi(),
    );
  }
}

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class ProgressIndi extends StatefulWidget {
  const ProgressIndi({super.key});

  @override
  State<ProgressIndi> createState() => _ProgressIndiState();
}

class _ProgressIndiState extends State<ProgressIndi>
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
        transitionDuration: const Duration(milliseconds: 1000), // Adjust transition duration as needed
        pageBuilder: (_, __, ___) => const WelcomeScreen(), // Replace WelcomeScreen() with your actual screen
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
                image: AssetImage('assets/bg1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 130, 0, 30),
                  child: Image.asset('assets/intelog.png',
                  height: 150,),
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









