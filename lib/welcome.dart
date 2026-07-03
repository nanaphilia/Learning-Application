
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'login.dart';
import 'main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: WelcomeScreenState(),
    );
  }
}

class WelcomeScreenState extends StatefulWidget {
  const WelcomeScreenState ({super.key});

  @override
  State<WelcomeScreenState> createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreenState> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 110, 0, 0),
                  child: Image.asset('assets/logo2.png',
                    height: 220,),
                ),
                const Text('Welcome!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 47,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gothic',
                  ),),
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: const Text('The application is designed to facilitate learning through interactive quizzes and lessons. This structure ensures engagement  and progression in the learning process.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.w100,
                          fontSize: 14
                      )),
                ),
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          hexToColor('#01C38E').withOpacity(0.5), hexToColor('#000000').withOpacity(0.5)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  margin: const EdgeInsets.only(top: 50),
                  child: TextButton(onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const LogInForm()));},
                      child: const Text('START',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                          fontSize:20,
                          letterSpacing: 3,
                        ),)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value: isChecked,
                      onChanged: (bool? value){
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      checkColor: hexToColor('#ffffff'),
                      activeColor: hexToColor('#01c38e'),
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                      visualDensity: VisualDensity.compact,),
                    RichText(
                        text: TextSpan(
                            text: 'In order to start using intelleXcel, please\nfirst agree to our ',
                            style: const TextStyle(
                                fontSize: 11,
                                fontFamily: 'Gothic',
                                color: Colors.white
                            ),
                            children: [
                              TextSpan(
                                  text: 'Terms and Conditions',
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 11,
                                    fontFamily: 'Gothic',
                                    color: Colors.white,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      showDialog(
                                          context: context, builder: (BuildContext context){
                                        return Stack(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      hexToColor('#01c28d'),
                                                      hexToColor('#000000'),
                                                    ],
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                  ),
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Scrollbar(
                                                thickness: 1,
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Center(
                                                        child: Container(
                                                          padding: const EdgeInsets.only(top: 20),
                                                          child: Image.asset('assets/intelog.png',
                                                            height: 100,),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding: const EdgeInsets.all(10),
                                                        margin: const EdgeInsets.only(bottom: 10),
                                                        child: const Center(
                                                          child:  Text('Terms and Conditions',
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 25,
                                                                  fontFamily: 'Gothic',
                                                                  letterSpacing: 1
                                                              )),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding: const EdgeInsets.all(10),
                                                        margin: const EdgeInsets.only(bottom: 15),
                                                        child: const Text('Welcome to intelleXcel! These Terms and Conditions govern your use of our e-learning platform. Please read these terms carefully before using our services. By accessing or using intelleXcel, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, you may not access or use our services.',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 12,
                                                                fontFamily: 'Gothic',
                                                                color: Colors.white
                                                            )
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: const Text('1. Acceptance of Terms',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                          ),),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 3),
                                                        child: const Text('By using intelleXcel, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions.\n',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              color: Colors.white
                                                          ),),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: const Text('2. Description of Service',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                          ),),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 3),
                                                        child: const Text('IntelleXcel provides online educational resources, courses, and related services to users.\n',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              color: Colors.white
                                                          ),),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: const Text('3. User Accounts',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                          ),),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'a. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'To access certain features of intelleXcel, you may be required to create a user account. You agree to provide accurate and complete information when creating your account.',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'b. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 3),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'c. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'You agree to notify us immediately of any unauthorized use of your account or any other breach of security.\n',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: const Text('4. Use of Services',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                          ),),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'a. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'You agree to use intelleXcel for lawful purposes only and in accordance with these Terms and Conditions.',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 3),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'b. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'You agree not to engage in any activity that interferes with or disrupts the functioning of intelleXcel or its servers.\n',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: const Text('5. Intellectual Property',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'a. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'All content, materials, and resources provided through intelleXcel are the property of intelleXcel or its licensors and are protected by copyright and other intellectual property laws.',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 3),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'b. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'You may not modify, reproduce, distribute, or create derivative works based on any content or materials from intelleXcel without prior written consent.\n',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: const Text('6. User Content',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'a. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'You may have the opportunity to submit or upload content, including but not limited to comments, feedback, and course materials.',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 3),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'b. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'By submitting user content, you grant intelleXcel a worldwide, royalty-free, perpetual, irrevocable, non-exclusive, and fully sub-licensable right to use, reproduce, modify, adapt, publish, translate, create derivative works from, distribute, perform, and display such content in connection with intelleXcel.\n',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: const Text('7. Privacy Policy',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'a. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'Our Privacy Policy governs the collection, use, and disclosure of personal information provided by users of intelleXcel.',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'b. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'By using our services, you consent to the collection and use of your personal information in accordance with our Privacy Policy.\n',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: const Text('8. Termination',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'a. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'We reserve the right to suspend or terminate your access to intelleXcel at any time and for any reason, without prior notice.',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 3),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'b. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'Upon termination, your right to access and use intelleXcel will cease immediately.\n',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: const Text('9. Modifications to Terms and Services',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'a. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'We reserve the right to modify these Terms and Conditions or any aspect of intelleXcel at any time.',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 3),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'b. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'Your continued use of our services after any such modifications shall constitute your acceptance of the modified terms.\n',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: const Text('10. Disclaimer of Warranties',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontFamily: 'Gothic',
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.white
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'a. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'IntelleXcel is provided on an "as is" and "as available" basis without warranties of any kind.',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                        child: RichText(text: const TextSpan(
                                                          text: 'b. ',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily: 'Gothic',
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: 'We do not warrant that our services will be uninterrupted, secure, or error-free.',
                                                              style: TextStyle(
                                                                fontFamily: 'Gothic',
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w100,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.all(20),
                                                        child: Center(
                                                          child: Container(
                                                            width: 200,
                                                            height: 40,
                                                            decoration: BoxDecoration(
                                                              gradient: LinearGradient(
                                                                colors: [
                                                                  hexToColor('#01c28d').withOpacity(0.1),hexToColor('#000000')
                                                                ],
                                                                begin: Alignment.topCenter,
                                                                end: Alignment.bottomCenter,
                                                              ),
                                                              border: Border.all(
                                                                color: hexToColor('#e9e9e9')
                                                              ),
                                                              borderRadius: BorderRadius.circular(20)
                                                            ),
                                                            child: ElevatedButton(
                                                              style: const ButtonStyle(
                                                                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                                                                elevation: MaterialStatePropertyAll(0),
                                                              ),
                                                                onPressed: (){
                                                                  Navigator.of(context).pop();
                                                                },
                                                                child: Text('I UNDERSTAND',
                                                                  style: TextStyle(
                                                                    color: hexToColor('#e9e9e9'),
                                                                    fontFamily: 'Paneuropean',
                                                                    fontSize: 12,
                                                                  ),
                                                                )
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      }
                                      );
                                    }
                              )
                            ]
                        )
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}