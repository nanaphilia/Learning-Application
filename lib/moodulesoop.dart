import 'package:flutter/material.dart';
import 'package:midterm_exam/appdevmodule.dart';
import 'package:midterm_exam/main.dart';
import 'package:midterm_exam/oopmodule.dart';
import 'package:midterm_exam/quizwelcomeoop.dart';

class Module1OOPState extends StatefulWidget {
  const Module1OOPState({super.key});

  @override
  _Module1OOPStateState createState() => _Module1OOPStateState();
}

class _Module1OOPStateState extends State<Module1OOPState> {
  final ScrollController _scrollController = ScrollController();
  double _progressValue = 0.0;
  double _maxScrollExtent = 0.0;
  bool _reachedBottom = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateProgress);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _maxScrollExtent = _scrollController.position.maxScrollExtent;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateProgress);
    _scrollController.dispose();
    super.dispose();
  }

  void _updateProgress() {
    setState(() {
      _maxScrollExtent = _scrollController.position.maxScrollExtent;
      if (_maxScrollExtent > 0) {
        _progressValue = _scrollController.offset / _maxScrollExtent;
      } else {
        _progressValue = 0.0;
      }
      // Check if scroll reached the bottom
      _reachedBottom = _scrollController.offset >= _scrollController.position.maxScrollExtent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.only(top: 5),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'TOPIC 1:\n',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Paneuropean',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'OOP',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OOPModule()),
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
                image: AssetImage('assets/modulebg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  hexToColor('#000000').withOpacity(0.1), hexToColor('#01c28d').withOpacity(0.1),hexToColor('#000000').withOpacity(0.3)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Object Oriented Programming',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'Is a programming concept that works on the principle that objects are the most important part of your program. It allows users create the objects that they want and then create methods to handle those objects. Manipulating these objects to get results is the goal of Object-Oriented Programming.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: const Text(
                        'Objects have Identity',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: 290,
                      child: const Text(
                        'Every object in an object-oriented program has an identity.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: const Text(
                        'Class',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: 290,
                      child: const Text(
                        'Is an entity that determines how an object will behave and what the object will contain.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 290,
                      child: Text(
                        'What is the Difference Between Object & Class?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: hexToColor('#01c38e'),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Paneuropean',
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: '- A ',
                            ),
                            TextSpan(
                              text: 'class ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'is a ',
                            ),
                            TextSpan(
                              text: 'blueprint or prototype ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'that defines the variables and the methods (functions) common to all objects of a certain kind.'
                            )
                          ]
                        ),

                      )
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: 290,
                        child: RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Paneuropean',
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              children: [
                                TextSpan(
                                  text: '- An ',
                                ),
                                TextSpan(
                                  text: 'object  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'is a ',
                                ),
                                TextSpan(
                                  text: 'specimen of a class. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                    text: 'Software objects are often used to model real-world objects you find in everyday life.'
                                )
                              ]
                          ),

                        )
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Create a class',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      child: const Text(
                        'We can create a class in Java using the class keyword.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT11.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Creating an Object',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      child: const Text(
                        'We will use the “new” keyword along with the constructor of the class to create an object. Constructors are similar to methods and have the same name as the class.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT12.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Access Members of a Class',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      child: const Text(
                        'We can use the name of objects along with the (.) period operator to access members of a class.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT13.JPG', height: 150,
                        width: 290,
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            hexToColor('#01C28D '),hexToColor('#002B1F ')
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: TextButton(
                        child: Text(
                            'PROCEED TO TOPIC 2',
                            style: TextStyle(
                              color: hexToColor('#e9e9e9'),
                              fontFamily: 'Paneuropean',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Module2OOP()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Progress Bar
          Positioned(
            height: 20,
            left: 35,
            right: 35,
            bottom: 15,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1000),
              opacity: _reachedBottom ? 0.0 : 1.0,
              child: _reachedBottom ? const SizedBox() : LinearProgressIndicator(
                borderRadius: BorderRadius.circular(20),
                value: _progressValue,
                backgroundColor: Colors.black,
                valueColor: AlwaysStoppedAnimation<Color>(hexToColor('#01c38e')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Module2OOP extends StatefulWidget {
  const Module2OOP({super.key});

  @override
  State<Module2OOP> createState() => _Module2OOPState();
}

class _Module2OOPState extends State<Module2OOP> {
  final ScrollController _scrollController = ScrollController();
  double _progressValue = 0.0;
  double _maxScrollExtent = 0.0;
  bool _reachedBottom = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateProgress);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _maxScrollExtent = _scrollController.position.maxScrollExtent;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateProgress);
    _scrollController.dispose();
    super.dispose();
  }

  void _updateProgress() {
    setState(() {
      _maxScrollExtent = _scrollController.position.maxScrollExtent;
      if (_maxScrollExtent > 0) {
        _progressValue = _scrollController.offset / _maxScrollExtent;
      } else {
        _progressValue = 0.0;
      }
      // Check if scroll reached the bottom
      _reachedBottom = _scrollController.offset >= _scrollController.position.maxScrollExtent;
    });
  }

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
              text: 'TOPIC 2:\n',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Paneuropean',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Getters / Setters',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OOPModule()),
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
                image: AssetImage('assets/modulebg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  hexToColor('#000000').withOpacity(0.1), hexToColor('#01c28d').withOpacity(0.1),hexToColor('#000000').withOpacity(0.3)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Getters / Setters',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'Are methods used to protect your data and make your code more secure. Getter returns the value (accessors), it returns the value of data type int, String, double, float, etc. It starts with the word “get” followed by the variable name. Setter sets or updates the value (mutators), It sets the value for any variable used in a class’s programs. It starts with the word “set” followed by the variable name. Getter and Setter make the programmer convenient in setting and getting the value for a particular data type.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: const Text(
                        'Syntax',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT21.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: const Text(
                        'The Getters',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT22.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: const Text(
                        'The Setters',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT23.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: const Text(
                        'Main Method',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT23.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            hexToColor('#01C28D '),hexToColor('#002B1F ')
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: TextButton(
                        child: Text(
                            'PROCEED TO QUIZ 1',
                            style: TextStyle(
                              color: hexToColor('#e9e9e9'),
                              fontFamily: 'Paneuropean',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Quiz1OOPWelc()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Progress Bar
          Positioned(
            height: 20,
            left: 35,
            right: 35,
            bottom: 15,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1000),
              opacity: _reachedBottom ? 0.0 : 1.0,
              child: _reachedBottom ? const SizedBox() : LinearProgressIndicator(
                borderRadius: BorderRadius.circular(20),
                value: _progressValue,
                backgroundColor: Colors.black,
                valueColor: AlwaysStoppedAnimation<Color>(hexToColor('#01c38e')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Module3OOP extends StatefulWidget {
  const Module3OOP({super.key});

  @override
  State<Module3OOP> createState() => _Module3OOPState();
}

class _Module3OOPState extends State<Module3OOP> {
  final ScrollController _scrollController = ScrollController();
  double _progressValue = 0.0;
  double _maxScrollExtent = 0.0;
  bool _reachedBottom = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateProgress);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _maxScrollExtent = _scrollController.position.maxScrollExtent;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateProgress);
    _scrollController.dispose();
    super.dispose();
  }

  void _updateProgress() {
    setState(() {
      _maxScrollExtent = _scrollController.position.maxScrollExtent;
      if (_maxScrollExtent > 0) {
        _progressValue = _scrollController.offset / _maxScrollExtent;
      } else {
        _progressValue = 0.0;
      }
      // Check if scroll reached the bottom
      _reachedBottom = _scrollController.offset >= _scrollController.position.maxScrollExtent;
    });
  }

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
              text: 'TOPIC 3:\n',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Paneuropean',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Methods',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OOPModule()),
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
                image: AssetImage('assets/modulebg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  hexToColor('#000000').withOpacity(0.1), hexToColor('#01c28d').withOpacity(0.1),hexToColor('#000000').withOpacity(0.3)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Methods',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'This is a block of code that performs a specific task.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Two types of methods:',
                        style: TextStyle(
                          fontSize: 13,
                          color: hexToColor('#e9e9e9'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: 290,
                      child: RichText(
                        text: const TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Paneuropean',
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                text: '1. User-defined Methods: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'We can create our own method based on our requirements.\n\n',
                              ),
                              TextSpan(
                                text: '2. Standard Library Methods: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                  text: 'These are built-in methods in Java that are available to use.of code that performs a specific task.'
                              )
                            ]
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: 290,
                        child: RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Paneuropean',
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              children: [
                                TextSpan(
                                  text: 'returnType -  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'It specifies what type of value a method returns For example if a method has an int return type then it returns an integer value.\n\n',
                                ),
                                TextSpan(
                                    text: 'f the method does not return a value, its return type is void.'
                                )
                              ]
                          ),
                        )
                    ),
                    Container(
                      width: 290,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Complete Syntax',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'modifier static returnType nameOfMethod\n(parameter1, parameter2, ...) {\n// method body',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Example',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT31.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Example 2',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT32.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            hexToColor('#01C28D '),hexToColor('#002B1F ')
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: TextButton(
                        child: Text(
                            'PROCEED TO TOPIC 4',
                            style: TextStyle(
                              color: hexToColor('#e9e9e9'),
                              fontFamily: 'Paneuropean',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Module4OOP()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Progress Bar
          Positioned(
            height: 20,
            left: 35,
            right: 35,
            bottom: 15,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1000),
              opacity: _reachedBottom ? 0.0 : 1.0,
              child: _reachedBottom ? const SizedBox() : LinearProgressIndicator(
                borderRadius: BorderRadius.circular(20),
                value: _progressValue,
                backgroundColor: Colors.black,
                valueColor: AlwaysStoppedAnimation<Color>(hexToColor('#01c38e')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Module4OOP extends StatefulWidget {
  const Module4OOP({super.key});

  @override
  State<Module4OOP> createState() => _Module4OOPState();
}

class _Module4OOPState extends State<Module4OOP> {
  final ScrollController _scrollController = ScrollController();
  double _progressValue = 0.0;
  double _maxScrollExtent = 0.0;
  bool _reachedBottom = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateProgress);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _maxScrollExtent = _scrollController.position.maxScrollExtent;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateProgress);
    _scrollController.dispose();
    super.dispose();
  }

  void _updateProgress() {
    setState(() {
      _maxScrollExtent = _scrollController.position.maxScrollExtent;
      if (_maxScrollExtent > 0) {
        _progressValue = _scrollController.offset / _maxScrollExtent;
      } else {
        _progressValue = 0.0;
      }
      // Check if scroll reached the bottom
      _reachedBottom = _scrollController.offset >= _scrollController.position.maxScrollExtent;
    });
  }

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
              text: 'TOPIC 4:\n',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Paneuropean',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Constructors',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OOPModule()),
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
                image: AssetImage('assets/modulebg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  hexToColor('#000000').withOpacity(0.1), hexToColor('#01c28d').withOpacity(0.1),hexToColor('#000000').withOpacity(0.3)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Method Overloading',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'Several or more methods may have the same name if they differ in parameters (different number of parameters, different types of parameters, or both).',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Text(
                        'Changing the number of parameters',
                        style: TextStyle(
                          fontSize: 13,
                          color: hexToColor('#e9e9e9'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT41.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      width: 290,
                      child: const Text(
                        'Example',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT42.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      width: 290,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Constructors',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'Is similar to a method that is cited when an object of the class is created.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: const Text(
                        'Types of Constructor',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: 290,
                      child: RichText(
                        text: const TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Paneuropean',
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                text: '1. No-Arg Constructor - ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'that does not accept any arguments.\n\n',
                              ),
                              TextSpan(
                                text: '2. Parameterized Constructor - ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                  text: 'accepts arguments.\n\n'
                              ),
                              TextSpan(
                                text: '3. Default Constructor - ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                  text: 'If we do not create any constructor, the compiler automatically create a no-arg constructor during the execution of the program.'
                              )
                            ]
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: const Text(
                        'Constructors Overloading',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'We can also create two or more constructors with different parameters. This is called constructors overloading.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Example',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/OOPT43.JPG', height: 150,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            hexToColor('#01C28D '),hexToColor('#002B1F ')
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: TextButton(
                        child: Text(
                            'PROCEED TO QUIZ 2',
                            style: TextStyle(
                              color: hexToColor('#e9e9e9'),
                              fontFamily: 'Paneuropean',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Quiz1OOPWelc()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Progress Bar
          Positioned(
            height: 20,
            left: 35,
            right: 35,
            bottom: 15,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1000),
              opacity: _reachedBottom ? 0.0 : 1.0,
              child: _reachedBottom ? const SizedBox() : LinearProgressIndicator(
                borderRadius: BorderRadius.circular(20),
                value: _progressValue,
                backgroundColor: Colors.black,
                valueColor: AlwaysStoppedAnimation<Color>(hexToColor('#01c38e')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

