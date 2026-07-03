import 'package:flutter/material.dart';
import 'package:midterm_exam/result.dart';
import 'appdevmodule.dart';
import 'main.dart';
import 'menu.dart';

int _correctAnswers = 0;
int _attempts = 0;

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});


  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  int _wrongAnswers = 0;
  late int number;

  int getCorrectAnswers() {
    return _correctAnswers;
  }

  late List<Map<String, Object>> _questions;
  final List<Map<String, Object>> _originalQuestions = [
    {
      'questionText': 'An approach that has multiple layers of protection spread across the computers, networks, programs, or data that one intends to keep safe.',
      'answers': [
        {'text': 'Datafication', 'isCorrect': false},
        {'text': 'Cyber security', 'isCorrect': true},
        {'text': 'Quantum Computing', 'isCorrect': false},
      ],
    },
    {
      'questionText': '_____________ is simply transforming everything in our lives into devices or software powered by data. Also this is the modification of human chores and tasks into data-driven technology.',
      'answers': [
        {'text': 'Datafication', 'isCorrect': true},
        {'text': 'Cyber security', 'isCorrect': false},
        {'text': 'Robotic Process Automation', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'It uses software to automate business processes such as interpreting applications, processing transaction, dealing with data, and even even replying to emails. This technology trend automates repetitive tasks that people used to do.',
      'answers': [
        {'text': 'Emerging Technology', 'isCorrect': false},
        {'text': 'Blockchain', 'isCorrect': false},
        {'text': 'Robotic Process Automation', 'isCorrect': true},
      ],
    },
    {
      'questionText': 'The process of change from an agrarian and handicraft economy to one dominated by industry and machine manufacturing . These technological changes introduced novel ways of working and living and fundamentally transformed society.',
      'answers': [
        {'text': 'Industrial Revolution', 'isCorrect': true},
        {'text': 'Quantum Computer', 'isCorrect': false},
        {'text': '5G', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'This area of emerging technology that is great for running simulations and data analyses, such as for chemical or drug trials. These ae also much more expensive and difficult to build.',
      'answers': [
        {'text': 'Quantum Computer', 'isCorrect': true},
        {'text': 'Artificial Intelligence', 'isCorrect': false},
        {'text': 'Emerging Technology', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'An attack that uses fake communication, such as email to trick the receiver into opening it and carrying out the instructions inside, such as providing a credit card number.',
      'answers': [
        {'text': 'Man in the Middle', 'isCorrect': false},
        {'text': 'Password Attack', 'isCorrect': false},
        {'text': 'Phishing', 'isCorrect': true},
      ],
    },
    {
      'questionText': 'The next technology trend that follows the Internet of Things is __________.',
      'answers': [
        {'text': 'Augmented Technology', 'isCorrect': false},
        {'text': '5G', 'isCorrect': true},
        {'text': 'Blockchain', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'It has a considerable growing interest in the area of research in the IT industry, market, and academe.',
      'answers': [
        {'text': 'Industrial Revolution', 'isCorrect': false},
        {'text': 'Third Industrial Revolution', 'isCorrect': false},
        {'text': 'Emerging Technology', 'isCorrect': true},
      ],
    },
    {
      'questionText': 'The production of the Z1 computer, which used binary floating-point numbers and Boolean logic was developed in this revolution.',
      'answers': [
        {'text': 'Third Industrial Revolution', 'isCorrect': true},
        {'text': 'Industrial Revolution', 'isCorrect': false},
        {'text': 'Fourth Industrial Revolution', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'It offers security that is useful in many other ways, can be described as data you can only add to not take away from or change.',
      'answers': [
        {'text': 'Datafication', 'isCorrect': false},
        {'text': 'Internet of Things', 'isCorrect': false},
        {'text': 'Blockchain', 'isCorrect': true},
      ],
    },
  ];



  @override
  void initState() {
    super.initState();
    updateNumber();
    _initializeQuestions();
  }

  void _initializeQuestions() {
    _questions = List.from(_originalQuestions);
    _questions.shuffle();
    _questions = _questions.sublist(0, 5);
    _attempts++;
    _wrongAnswers = 0;
    _correctAnswers = 0;
  }


  void updateNumber() {
    setState(() {
      number = _questionIndex + 1;
    });
  }


  void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      setState(() {
        _correctAnswers++;
      });
    }
    else{
      setState(() {
        _wrongAnswers++;
      });
    }
    setState(() {
      _questionIndex++;
      updateNumber();
      if (_questionIndex == _questions.length){
      }
    });

  }
  void _checkQuiz1Status() {
    if (_correctAnswers >= 3) {
      setState(() {
        isQuiz1AppDevPassed = true;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _correctAnswers = 0;
      _wrongAnswers = 0;
      number = 1;
      _initializeQuestions();
    });
  }

  Widget quizCompletedWidget() {
    if (_correctAnswers >= 3) {
      _checkQuiz1Status();
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/QuizResultBG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 280,
            child: Container(
              margin: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10
                    ),
                    child: Image.asset('assets/CONGIC.png',
                      height: 120,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Congratulations, Reanne!',
                      style: TextStyle(
                        fontSize: 22,
                        color: hexToColor('#e9e9e9'),
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    child: const Text(
                      'You have successfully passed your first quiz and unlocked the next module. Well done!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: 'Gothic'
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 290,
                    margin: const EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                        color: hexToColor('#01C38E').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(19, 0, 4, 2),
                                      child: Image.asset('assets/icons/Total.png',
                                        height: 20,),
                                    )
                                ),
                                TextSpan(
                                  text: _questions.length.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gothic',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nTOTAL QUESTION',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              color: hexToColor('#01C38E'),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 2),
                                      child:  Image.asset('assets/icons/Correct.png',
                                        height: 20,
                                      )
                                  ),
                                ),
                                TextSpan(
                                  text: _correctAnswers.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Paneuropean',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nCORRECT',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              color: hexToColor('#01C38E'),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 2),
                                      child: Image.asset('assets/icons/Wrong.png',
                                        height: 20,
                                      )
                                  ),
                                ),
                                TextSpan(
                                  text: _wrongAnswers.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gothic',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nWRONG',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 290,
                    height: 40,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            hexToColor('#01c28d'),hexToColor('#002b1f')
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AppDevModule()));
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                      ),
                      child:  Text(
                        'PROCEED TO NEXT TOPIC',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#e9e9e9'),
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 290,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.white, width: 2)
                          )
                      ),
                      child: Text(
                        'GO TO HOME',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#e9e9e9'),
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Menu()));
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/QuizResultBG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 280,
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10
                    ),
                    child: Image.asset('assets/OOPSIC.png',
                      height: 120,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'OOPS! IT SEEMS YOU DIDN\'T PASS THE QUIZ.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: hexToColor('#e9e9e9'),
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    child: const Text(
                      'Take some time to review earlier topics before attempting it again. Learning from mistakes leads to progress. Happy studying!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: 'Paneuropean'
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 290,
                    margin: const EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                        color: hexToColor('#01C38E').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(19, 0, 4, 2),
                                      child: Image.asset('assets/icons/Total.png',
                                        height: 20,),
                                    )
                                ),
                                TextSpan(
                                  text: _questions.length.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Paneuropean',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nTOTAL QUESTION',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              color: hexToColor('#01C38E'),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 2),
                                      child:  Image.asset('assets/icons/Correct.png',
                                        height: 20,
                                      )
                                  ),
                                ),
                                TextSpan(
                                  text: _correctAnswers.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gothic',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nCORRECT',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              color: hexToColor('#01C38E'),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 2),
                                      child: Image.asset('assets/icons/Wrong.png',
                                        height: 20,
                                      )
                                  ),
                                ),
                                TextSpan(
                                  text: _wrongAnswers.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gothic',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nWRONG',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 290,
                    height: 40,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            hexToColor('#01c28d'),hexToColor('#002b1f')
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AppDevModule()));
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                      ),
                      child:  Text(
                        'GO TO LESSON 1',
                        style: TextStyle(
                          fontSize: 13,
                          color: hexToColor('#e9e9e9'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 290,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.white, width: 1)
                          )
                      ),
                      child: Text(
                        'GO TO HOME',
                        style: TextStyle(
                          fontSize: 13,
                          color: hexToColor('#e9e9e9'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Menu()));
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/welcomebg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 25,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                child: Text('QUIZ RESULT!',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Paneuropean',
                    color: hexToColor('#01c38e'),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 26),
                child: Image.asset('assets/intelogquiz.png',
                    height: 70),
              ),
            ],
          ),
          leading: IconButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AppDevModule()));
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            iconSize: 40,
            padding: const EdgeInsets.only(left: 10),
          ),
        ),
        body:
        _questionIndex < _questions.length
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text('0$number OF 05',
                    style: TextStyle(
                        color: hexToColor('#01c38e'),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Paneuropean'
                    ))),
            Container(
              width: 280,
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
              child: Text(
                _questions[_questionIndex]['questionText'] as String,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Paneuropean',
                  fontWeight: FontWeight.bold,
                  color: hexToColor('#e9e9e9'),
                ),
              ),
            ),
            ...( _questions[_questionIndex]['answers'] as List<Map<String, Object>> ).map((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () => _answerQuestion(answer['isCorrect'] as bool),
                    child: Text(answer['text'] as String,
                        style: const TextStyle(
                          fontFamily: 'Paneuropean',
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              );
            }),
          ],
        )
            : quizCompletedWidget(),
      ),
    );
  }
}


class ResultAppDev extends StatefulWidget {
  const ResultAppDev({super.key});

  @override
  State<ResultAppDev> createState() => _ResultAppDevState();
}

class _ResultAppDevState extends State<ResultAppDev> {


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
              MaterialPageRoute(builder: (context) => const Results()),
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
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 270,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Text('Application Development and Emerging Technologies\n(ITE 7)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: hexToColor('#01c38e'),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 170,
                        width: 270,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                hexToColor('#01c28d').withOpacity(0.7),hexToColor('#002b1f').withOpacity(0.7)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Text('QUIZ 1: MODULE 1 AND 2',
                                style: TextStyle(
                                  color: hexToColor('#e9e9e9'),
                                  fontSize: 17,
                                  fontFamily: 'Paneuropean',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 230,
                                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                                    child: RichText(
                                      text: TextSpan(
                                          text: 'Recent Score: ',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Paneuropean',
                                            fontSize: 14,
                                          ),
                                          children: [
                                            TextSpan(
                                                text: _attempts > 0 ? '0$_correctAnswers of 05' : '--',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    width: 230,
                                    child: RichText(
                                      text: TextSpan(
                                          text: 'Status: ',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Paneuropean',
                                            fontSize: 14,
                                          ),
                                          children: [
                                            TextSpan(
                                                text: _correctAnswers >= 3 ? 'Passed' : '--',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 230,
                                    child: RichText(
                                      text: TextSpan(
                                          text: 'Attempts made: ',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Paneuropean',
                                            fontSize: 14,
                                          ),
                                          children: [
                                            TextSpan(
                                                text: _attempts > 0 ? '0$_attempts' : '--',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 270,
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 270,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                hexToColor('#01c28d').withOpacity(0.7),hexToColor('#002b1f').withOpacity(0.7)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Text('QUIZ 2: MODULE 3 AND 4',
                                style: TextStyle(
                                  color: hexToColor('#e9e9e9'),
                                  fontSize: 17,
                                  fontFamily: 'Paneuropean',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 230,
                                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                                    child: RichText(
                                      text: TextSpan(
                                          text: 'Recent Score: ',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Paneuropean',
                                            fontSize: 14,
                                          ),
                                          children: [
                                            TextSpan(
                                                text: _attempts1 > 0 ? '0$_correctAnswers1 of 05' : '--',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    width: 230,
                                    child: RichText(
                                      text:  TextSpan(
                                          text: 'Status: ',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Paneuropean',
                                            fontSize: 14,
                                          ),
                                          children: [
                                            TextSpan(
                                                text: _correctAnswers1 >= 3 ? 'Passed' : '--',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 230,
                                    child: RichText(
                                      text:  TextSpan(
                                          text: 'Attempts made: ',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Paneuropean',
                                            fontSize: 14,
                                          ),
                                          children: [
                                            TextSpan(
                                                text: _attempts1 > 0 ? '0$_attempts1' : '--',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}





int _attempts1 = 0;
int _correctAnswers1 = 0;

class Quiz2AppDev extends StatefulWidget {
  const Quiz2AppDev({super.key});

  @override
  State<Quiz2AppDev> createState() => _Quiz2AppDevState();
}

class _Quiz2AppDevState extends State<Quiz2AppDev> {
  int _questionIndex1 = 0;
  int _wrongAnswers1 = 0;
  late int number1;
  int getCorrectAnswers() {
    return _correctAnswers1;
  }

  late List<Map<String, Object>> _questions1;

  final List<Map<String, Object>> _originalQuestions1 = [
    {
      'questionText': 'It was marked by a transition from hand production methods to machines through the use of steam power and water power.',
      'answers': [
        {'text': 'First Industrial Revolution', 'isCorrect': true},
        {'text': 'Second Industrial Revolution', 'isCorrect': false},
        {'text': 'Third Industrial Revolution', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'It is significant in Industry 4.0 because of the increase connectivity and use of standard communication protocols.',
      'answers': [
        {'text': 'Augmented Reality', 'isCorrect': false},
        {'text': 'The Cloud', 'isCorrect': false},
        {'text': 'Cybersecurity', 'isCorrect': true},
      ],
    },
    {
      'questionText': 'It involves the use of actuators and smart sensors to manufacturing and industrial processes.',
      'answers': [
        {'text': 'Industrial Internet of Things (IIoT)', 'isCorrect': true},
        {'text': 'Simulation', 'isCorrect': false},
        {'text': 'Big Data Analytics', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'In the not-so-distant future, robots will not only interact with one another in a factory/industrial setting but will.',
      'answers': [
        {'text': 'Minecraft', 'isCorrect': false},
        {'text': 'Autonomous Robots', 'isCorrect': true},
        {'text': 'Roblox', 'isCorrect': false},
      ],
    },
    {
      'questionText': '____________ today is evolving at a rapid pace, enabling faster change and progress, causing an acceleration of the rate of change.',
      'answers': [
        {'text': 'Internet', 'isCorrect': false},
        {'text': 'Technology', 'isCorrect': true},
        {'text': 'Economy', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'Where 3G and 4G technologies have enabled us to browse the internet, It use data-driven services, increased bandwidths for streaming on Spotify or YouTube and so much more.',
      'answers': [
        {'text': '5G', 'isCorrect': true},
        {'text': '3G', 'isCorrect': false},
        {'text': 'GG', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'It is a set of practices that focuses on collaboration and communication between software development and IT operations teams.',
      'answers': [
        {'text': 'Blockchain', 'isCorrect': false},
        {'text': 'DevOps', 'isCorrect': true},
        {'text': 'Metaverse', 'isCorrect': false},
      ],
    },
    {
      'questionText': '__________ are virtual replicas of physical objects, processes, or systems.',
      'answers': [
        {'text': 'Digital Twins', 'isCorrect': true},
        {'text': 'Internet of Things', 'isCorrect': false},
        {'text': 'Metaverse', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'With people being accommodated and tangled with devices and technologies, confidence and trust have been built towards digital technologies.',
      'answers': [
        {'text': 'Digital Security', 'isCorrect': false},
        {'text': 'Digital Trust', 'isCorrect': true},
        {'text': 'Genomics', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'A cutting-edge technology has revolutionized various industries by enabling machines to create content that resembles human-generated work.',
      'answers': [
        {'text': 'New Energy Solutions', 'isCorrect': false},
        {'text': 'Generative AI', 'isCorrect': true},
        {'text': '3D Printing', 'isCorrect': false},
      ],
    },
  ];



  @override
  void initState() {
    super.initState();
    updateNumber();
    _initializeQuestions();
  }

  void _initializeQuestions() {
    _questions1 = List.from(_originalQuestions1);
    _questions1.shuffle();
    _questions1 = _questions1.sublist(0, 5);
    _attempts1++;
    _wrongAnswers1 = 0;
    _correctAnswers1 = 0;
  }


  void updateNumber() {
    setState(() {
      number1 = _questionIndex1 + 1;
    });
  }


  void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      setState(() {
        _correctAnswers1++;
      });
    }
    else{
      setState(() {
        _wrongAnswers1++;
      });
    }
    setState(() {
      _questionIndex1++;
      updateNumber();
      if (_questionIndex1 == _questions1.length){
      }
    });

  }
  void _checkQuiz1Status() {
    if (_correctAnswers1 >= 3) {
      setState(() {
        isQuiz1OOPPassed = true;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex1 = 0;
      _correctAnswers1 = 0;
      _wrongAnswers1 = 0;
      number1 = 1;
      _initializeQuestions();
    });
  }


  Widget quizCompletedWidget1() {
    if (_correctAnswers1 >= 3) {
      _checkQuiz1Status();
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/QuizResultBG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 280,
            child: Container(
              margin: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10
                    ),
                    child: Image.asset('assets/CONGIC.png',
                      height: 120,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Congratulations, Reanne!',
                      style: TextStyle(
                        fontSize: 22,
                        color: hexToColor('#e9e9e9'),
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    child: const Text(
                      'You have successfully passed your first quiz and unlocked the next module. Well done!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: 'Gothic'
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 290,
                    margin: const EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                        color: hexToColor('#01C38E').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(19, 0, 4, 2),
                                      child: Image.asset('assets/icons/Total.png',
                                        height: 20,),
                                    )
                                ),
                                TextSpan(
                                  text: _questions1.length.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gothic',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nTOTAL QUESTION',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              color: hexToColor('#01C38E'),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 2),
                                      child:  Image.asset('assets/icons/Correct.png',
                                        height: 20,
                                      )
                                  ),
                                ),
                                TextSpan(
                                  text: _correctAnswers1.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Paneuropean',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nCORRECT',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              color: hexToColor('#01C38E'),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 2),
                                      child: Image.asset('assets/icons/Wrong.png',
                                        height: 20,
                                      )
                                  ),
                                ),
                                TextSpan(
                                  text: _wrongAnswers1.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gothic',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nWRONG',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 290,
                    height: 40,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            hexToColor('#01c28d'),hexToColor('#002b1f')
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AppDevModule()));
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                      ),
                      child:  Text(
                        'PROCEED TO NEXT TOPIC',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#e9e9e9'),
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 290,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.white, width: 2)
                          )
                      ),
                      child: Text(
                        'GO TO HOME',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#e9e9e9'),
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Menu()));
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/QuizResultBG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 280,
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10
                    ),
                    child: Image.asset('assets/OOPSIC.png',
                      height: 120,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'OOPS! IT SEEMS YOU DIDN\'T PASS THE QUIZ.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: hexToColor('#e9e9e9'),
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    child: const Text(
                      'Take some time to review earlier topics before attempting it again. Learning from mistakes leads to progress. Happy studying!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: 'Paneuropean'
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 290,
                    margin: const EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                        color: hexToColor('#01C38E').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(19, 0, 4, 2),
                                      child: Image.asset('assets/icons/Total.png',
                                        height: 20,),
                                    )
                                ),
                                TextSpan(
                                  text: _questions1.length.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Paneuropean',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nTOTAL QUESTION',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              color: hexToColor('#01C38E'),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 2),
                                      child:  Image.asset('assets/icons/Correct.png',
                                        height: 20,
                                      )
                                  ),
                                ),
                                TextSpan(
                                  text: _correctAnswers1.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gothic',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nCORRECT',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              color: hexToColor('#01C38E'),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 2),
                                      child: Image.asset('assets/icons/Wrong.png',
                                        height: 20,
                                      )
                                  ),
                                ),
                                TextSpan(
                                  text: _wrongAnswers1.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gothic',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: '\nWRONG',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 290,
                    height: 40,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            hexToColor('#01c28d'),hexToColor('#002b1f')
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AppDevModule()));
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                      ),
                      child:  Text(
                        'GO TO LESSON 1',
                        style: TextStyle(
                          fontSize: 13,
                          color: hexToColor('#e9e9e9'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 290,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.white, width: 1)
                          )
                      ),
                      child: Text(
                        'GO TO HOME',
                        style: TextStyle(
                          fontSize: 13,
                          color: hexToColor('#e9e9e9'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Menu()));
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/welcomebg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 25,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                child: Text('QUIZ 2',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Paneuropean',
                    color: hexToColor('#01c38e'),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 26),
                child: Image.asset('assets/intelogquiz.png',
                    height: 70),
              ),
            ],
          ),
          leading: IconButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AppDevModule()));
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            iconSize: 40,
            padding: const EdgeInsets.only(left: 10),
          ),
        ),
        body:
        _questionIndex1 < _questions1.length
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text('0$number1 OF 05',
                    style: TextStyle(
                        color: hexToColor('#01c38e'),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Paneuropean'
                    ))),
            Container(
              width: 280,
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
              child: Text(
                _questions1[_questionIndex1]['questionText'] as String,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Paneuropean',
                  fontWeight: FontWeight.bold,
                  color: hexToColor('#e9e9e9'),
                ),
              ),
            ),
            ...( _questions1[_questionIndex1]['answers'] as List<Map<String, Object>> ).map((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: SizedBox(
                  width: 270,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => _answerQuestion(answer['isCorrect'] as bool),
                    child: Text(answer['text'] as String,
                        style: const TextStyle(
                          fontFamily: 'Paneuropean',
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              );
            }),
          ],
        )
            : quizCompletedWidget1(),
      ),
    );
  }
}
