import 'package:flutter/material.dart';
import 'package:midterm_exam/quizwelcome.dart';
import 'appdevmodule.dart';
import 'main.dart';

class Module1State extends StatefulWidget {
  const Module1State({super.key});

  @override
  _Module1StateState createState() => _Module1StateState();
}

class _Module1StateState extends State<Module1State> {
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
                  text: 'Emerging Technologies and Its Characteristics',
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
              MaterialPageRoute(builder: (context) => const AppDevModule()),
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
                        'EMERGING TECHNOLOGIES',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 13),
                      child: Image.asset('assets/emerge.jpg', height: 200,
                      width: 290,),
                    ),
                    Container(
                      width: 290,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'Emerging technology is a term generally used to describe a new technology, but it may also refer to the continuing development of an existing technology.',
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
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        '5 CHARACTERISTIC OF EMERGING TECHNOLOGIES',
                        textAlign: TextAlign.center,
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
                        '1. Radical Novelty\n2. Relatively Fast Growth\n3. Coherence\n4. Prominent Impact\n5. Uncertainty and Ambiguity',
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
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'EXAMPLES OF EMERGING TECHNOLOGIES',
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
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Artificial Intelligence (AI)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Refers to the simulation of human intelligence in machines that are programmed to think like humans and mimic their actions.',
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
                      padding: const EdgeInsets.only(bottom: 18),
                      child: Image.asset('assets/ITE7M12.jpg', height: 200,
                      width: 290,),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Gene Therapy',
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
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Used to correct defective genes in order to cure a disease or help your body better fight disease.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 18),
                      child: Image.asset('assets/ITE7M13.jpg', height: 200,
                        width: 290,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        '3D Printing',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        '3D printing, also known as additive manufacturing, is a method of creating a three dimensional object layer-by-layer using a computer created design.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/ITE7M14.jpg'),
                          fit: BoxFit.fill
                        )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Nanotechnology',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'A field of research and innovation concerned with building \'things\' - generally, materials and devices - on the scale of atoms and molecules.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7M15.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Cancer Vaccines',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Cancer vaccines are a form of immunotherapy that can help educate the immune system about what cancer cells “look like” so that it can recognize and eliminate them.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7M16.png'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'In-Vitro Meat',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'In-Vitro meat is the (idea of) manufacturing of meat products through "tissue-engineering" technology.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7M17.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Medical Field Advancements',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'The healthcare industry is moving to store everything in an electronic format - simplifying the way medical history documents are created.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7M18.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Robotics',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Interdisciplinary field that integrates computer science and engineering.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7M19.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Stem-Cell Therapy',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'A form of regenerative medicine designed to repair damaged cells within the body by reducing inflammation and modulating the immune system.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7M110.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'Distributed Ledger Technology',
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
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'A digital system for recording the transaction of assets in which the transactions and their details are recorded in multiple places at the same time.',
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
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7M111.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 6),
                      width: 290,
                      child: Text(
                        'THE IMPORTANCE OF EMERGING TECHNOLOGY',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Paneuropean',
                          color: hexToColor('#01C38E'),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Emerging technology can change the way we do business, making our world smarter, more efficient, and safer. While the invention of the computer, telephone, and internet has transformed the way we communicate with each other and how we do business, emerging technology seeks to further those advancements to further benefit both businesses and citizens.',
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
                            'PROCEED TO MODULE 2',
                            style: TextStyle(
                              color: hexToColor('#e9e9e9'),
                              fontFamily: 'Paneuropean',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Module2State()));
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

class Module2State extends StatefulWidget {
  const Module2State({super.key});

  @override
  State<Module2State> createState() => _Module2StateState();
}

class _Module2StateState extends State<Module2State> {
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
        toolbarHeight: 110,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'TOPIC 2:\n',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Gothic',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Emerging Technology Areas',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AppDevModule()),
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
                  hexToColor('#000000').withOpacity(0.1), hexToColor('#01c28d').withOpacity(0.1),hexToColor('#000000').withOpacity(0.1)
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
                      width: 290,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        textAlign: TextAlign.center,
                        'INTERNET OF THINGS (IOT) AND SMART CITIES',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Image.asset('assets/ITE7T21.jpg', height: 200,
                        width: 290,),
                    ),
                    Container(
                      width: 290,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'The Internet of Things (IoT) refers to the general idea of devices and equipment that are readable, recognizable, locatable, addressable, and/or controllable via the internet. This includes everything from home appliances, wearable technology and cars.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'IMPORTANCE OF INTERNET OF THINGS (IOT) AND SMART CITIES',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'By means of low-cost computing, the cloud, big data, analytics, and mobile technologies, physical things can share and collect data with minimal human intervention.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'TECHNOLOGIES THAT MADE IOT POSSIBLE:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '1. Access to low-cost, low-power sensor technology.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '2. Connectivity.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '3. Cloud computing platforms.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '4. Machine learning and analytics.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      width: 290,
                      child: const Text(
                        '5. Conversational artificial intelligence (AI).',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      width: 290,
                      child: const Text(
                        'EXAMPLES OF INTERNET OF THINGS (IoT)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        'Airbiquity',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      width: 290,
                      child: const Text(
                        'A software and engineering company that provides over-the-air (OTA) updates and data management services for connected cars.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T22.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        'Dash',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      width: 290,
                      child: const Text(
                        'Dash\'s free app for iOS and Android receives data from a variety of sensors to keep you informed about your car\'s current status and immediate or future maintenance needs.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T23.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        'Josh.AI',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      width: 290,
                      child: const Text(
                        'JOSH.AI provides voice-controlled home automation using a variety of devices.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T24.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      width: 290,
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        textAlign: TextAlign.left,
                        'SMART CITIES',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T25.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: 290,
                      child: const Text(
                        'A smart city is a framework, predominantly composed of Information and Communication Technologies (ICT), to develop, deploy, and promote sustainable development practices to address growing urbanization challenges.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        textAlign: TextAlign.left,
                        'ARTIFICIAL INTELLIGENCE (AI)',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T26.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 10),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      width: 290,
                      child: const Text(
                        'Artificial intelligence (AI) refers to the simulation of human intelligence in machines that are programmed to think like humans and mimic their actions. The term may also be applied to any machine that exhibits traits associated with a human mind such as learning and problem-solving.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'FOUR TYPES OF ARTIFICIAL INTELLIGENCE (AI)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '1. Reactive Machines',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '2. Limited Memory',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '3. Theory of Mind',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: 290,
                      child: const Text(
                        '4. Self-awareness',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        'TWO BROAD CATEGORIES OF AI',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: const TextSpan(
                          text: 'Narrow AI: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gothic',
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: 'Sometimes referred to as "Weak AI," this kind of artificial intelligence operates within a limited context and is a simulation of human intelligence.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              )
                            )
                          ]
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 22),
                      width: 290,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: const TextSpan(
                            text: 'Artificial General Intelligence (AGI): ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gothic',
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                  text: 'AGI, sometimes referred to as "Strong AI," is the kind of artificial intelligence we see in the movies.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  )
                              )
                            ]
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: Text(
                        'CYBERSECURITY',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: hexToColor('#01C38E'),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T27.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 25),
                      width: 290,
                      child: const Text(
                        'Cybersecurity is the practice of protecting systems, networks, and programs from digital attacks. These cyberattacks are usually aimed at accessing, changing, or destroying sensitive information; extorting money from users; or interrupting normal business processes.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 290,
                      child: const Text(
                        '7 TYPES OF CYBER SECURITY THREATS',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: 290,
                      child: const Text(
                        '1. Malware\n2. Emotet\n3. Denial of Service\n4. Man in the Middle\n5. Phishing\n6. SQL Injection\n7. Password Attacks',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 290,
                      child: Text(
                        'QUANTUM COMPUTING',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: hexToColor('#01C38E'),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T28.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: 290,
                      child: const Text(
                        'Quantum computing is an area of computing focused on developing computer technology based on the principles of quantum theory (which explains the behavior of energy and material on the atomic and subatomic levels).',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Quiz1AppDev()));
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

class Module3 extends StatefulWidget {
  const Module3({super.key});

  @override
  State<Module3> createState() => _Module3State();
}

class _Module3State extends State<Module3> {
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
        toolbarHeight: 110,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'TOPIC 3:\n',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Gothic',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'The Fourth Industrial Revolution',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AppDevModule()),
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
                  hexToColor('#000000').withOpacity(0.3), hexToColor('#01c28d').withOpacity(0.6),hexToColor('#000000').withOpacity(0.3)
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
                        'Industrial Revolution',
                        style: TextStyle(
                          fontSize: 18,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 13),
                      child: Image.asset('assets/ITE7T31.jpg', height: 200,
                        width: 290,),
                    ),
                    Container(
                      width: 290,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'In modern history, the process of change from an agrarian and handicraft economy to one dominated by industry and machine manufacturing. These technological changes introduced novel ways of working and living and fundamentally transformed society.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: Text(
                        'STAGES OF INDUSTRIAL REVOLUTION',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: hexToColor('#01C38E'),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        'First Industrial Revolution',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'The First Industrial Revolution was marked by a transition from hand production methods to machines through the use of steam power and water power. ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        'Second Industrial Revolution',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Also known as the Technological Revolution, is the period between 1871 and 1914 that resulted from installations of extensive railroad and telegraph networks, which allowed for faster transfer of people and ideas, as well as electricity.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        'Third Industrial Revolution',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Also known as the Digital Revolution, occurred in the late 20th century, after the end of the two world wars, resulting from a slowdown of industrialization and technological advancement compared to previous periods.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        'Fourth Industrial Revolution',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'The Fourth Industrial Revolution (4IR or Industry 4.0) is the ongoing automation of traditional manufacturing and industrial practices, using modern smart technology.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: Text(
                        'THE BUILDING BLOCKS OF INDUSTRY 4.0',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: hexToColor('#01C38E'),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1.5),
                      width: 290,
                      child: const Text(
                        '1. Big Data Analytics',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 290,
                      child: const Text(
                        'A process that evaluates varied data sets of massive volumes.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T32.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1.5),
                      width: 290,
                      child: const Text(
                        '2. Autonomous Robots',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 290,
                      child: const Text(
                        'In the not-so-distant future, robots will not only interact with one another in a factory/industrial setting but will also work harmoniously alongside humans and will learn from them.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T33.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1.5),
                      width: 290,
                      child: const Text(
                        '3. Simulation',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 290,
                      child: const Text(
                        'In the industry 4.0 era, there will be more extensive use of simulations in factory operations to utilize data in real-time and create an impression of the physical world in a virtual model.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T34.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1.5),
                      width: 290,
                      child: const Text(
                        '4. Horizontal and Vertical System Integration',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 290,
                      child: const Text(
                        'In industry 4.0, there will be increased coherence between teams, functions, and companies.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T35.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1.5),
                      width: 290,
                      child: const Text(
                        '5. Industrial Internet of Things (IIoT)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 290,
                      child: const Text(
                        'IIoT and Industry 4.0 are more or less the same thing; IIoT involves the use of actuators and smart sensors to manufacturing and industrial processes.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T36.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1.5),
                      width: 290,
                      child: const Text(
                        '6. Cybersecurity',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 290,
                      child: const Text(
                        'The cyber security threat is significant in Industry 4.0 because of the increase connectivity and use of standard communication protocols.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T37.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1.5),
                      width: 290,
                      child: const Text(
                        '7. The Cloud',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 290,
                      child: const Text(
                        'Increasing sharing of data across sites and company boundaries will be need by more product-related undertakings in Industry 4.0.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T38.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1.5),
                      width: 290,
                      child: const Text(
                        '8. Additive Manufacturing',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 290,
                      child: const Text(
                        'It is only recently that companies have started to adopt additive manufacturing.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T39.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1.5),
                      width: 290,
                      child: const Text(
                        '9. Augmented Reality',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 290,
                      child: const Text(
                        'A variety of services in Industry 4.0 are supported by augmented reality (AR).',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 290,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ITE7T310.jpg'),
                              fit: BoxFit.fill
                          )
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: hexToColor('#01c38e'),
                      ),
                      child: TextButton(
                        child: const Text(
                            'PROCEED TO TOPIC 4',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Gothic',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Module4()));
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

class Module4 extends StatefulWidget {
  const Module4({super.key});

  @override
  State<Module4> createState() => _Module4State();
}

class _Module4State extends State<Module4> {
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
        toolbarHeight: 110,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'TOPIC 4:\n',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Gothic',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Top Emerging Technologies in 2024',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AppDevModule()),
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
                  hexToColor('#000000').withOpacity(0.3), hexToColor('#01c28d').withOpacity(0.6),hexToColor('#000000').withOpacity(0.3)
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
                        'NEW TECHNOLOGY TRENDS IN 2024',
                        style: TextStyle(
                          fontSize: 15,
                          color: hexToColor('#01C38E'),
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 13),
                      child: Image.asset('assets/ITE7T41.png', height: 200,
                        width: 290,),
                    ),
                    Container(
                      width: 290,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'Technology today is evolving at a rapid pace, enabling faster change and progress, causing an acceleration of the rate of change. However, it is not only technology trends and emerging technologies that are evolving, a lot more has changed, making IT professionals realize that their role will not stay the same in the contactless world tomorrow.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: Text(
                        'TOP 22 NEW TECHNOLOGY TRENDS FOR 2022',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: hexToColor('#01C38E'),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '1. Generative-AI',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Generative AI, a cutting-edge technology, has revolutionized various industries by enabling machines to create content that resembles human-generated work.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '2. Computing Power',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Computing power has already established its place in the digital era, with almost every device and appliance being computerized.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '3. Smart(er) Devices',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Artificial intelligence has played an essential role in making our world smarter and smoother.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '4. Datafication',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Datafication is simply transforming everything in our lives into devices or software powered by data.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '6. Extended Reality',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Extended reality comprises all the technologies that simulate reality, from Virtual Reality, Augmented Reality to Mixed Reality and everything else in-between.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '7. Digital Trust',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'With people being accommodated and tangled with devices and technologies, confidence and trust have been built towards digital technologies.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '8. 3D Printing',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'A key trend in innovation and technology is 3D printing which is used to formulate prototypes.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '9. Genomics',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Genomics is precisely that technology that peruses upon the make-up of genes, DNAs, their mapping, structure, etc.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '10. New Energy Solutions',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'The world has agreed to be greener for the sake of its landscapes and the energy we use.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '11. Robotic Process Automation (RPA)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Like AI and Machine Learning, Robotic Process Automation is another technology that automates jobs.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '12. Edge Computing',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Formerly a new technology trend to watch, cloud computing has become mainstream, with major players AWS (Amazon Web Services), Microsoft Azure and Google Cloud Platform dominating the market.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '13. Quantum Computing',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'The next remarkable technology trend is quantum computing, which is a form of computing that takes advantage of quantum phenomena like superposition and quantum entanglement.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '14. Virtual Reality and Augmented Reality',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'The next exceptional technology trend - Virtual Reality (VR) and Augmented Reality (AR), and Extended Reality (ER).',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '15. Blockchain',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Although most people think of blockchain technology in relation to cryptocurrencies such as Bitcoin, blockchain offers security that is useful in many other ways.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '16. Internet of Things (IoT)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'The Internet of Things is the future, and has already enabled devices, home appliances, cars and much more to be connected to and exchange data over the Internet.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '17. 5G',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Where 3G and 4G technologies have enabled us to browse the internet, use data-driven services, increased bandwidths for streaming on Spotify or YouTube and so much more, 5G services are expected to revolutionize our lives.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '18. Cyber Security',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Cyber security might not seem like an emerging new technology trend, given that it has been around for a while, but it is evolving just as other technologies are.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '19. Full Stack Development',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Full stack development refers to the practice of developing both the front-end (user interface) and back-end (server-side) components of a web or software application.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '20. DevOps',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'DevOps is a set of practices that focuses on collaboration and communication between software development (Dev) and IT operations (Ops) teams.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '21. Metaverse',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'The metaverse is a virtual, interconnected digital universe where users can interact with each other and digital environments in real-time.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      width: 290,
                      child: const Text(
                        '22. Digital Twins',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      width: 290,
                      child: const Text(
                        'Digital twins are virtual replicas of physical objects, processes, or systems.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gothic',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: hexToColor('#01c38e'),
                      ),
                      child: TextButton(
                        child: const Text(
                            'PROCEED TO QUIZ 2',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Gothic',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        onPressed: (){
                          if (isQuiz1AppDevPassed){
                            Navigator.of(context).pop();
                          }
                          else{
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Quiz 1 Not Passed'),
                                  content: const Text('You need to pass Quiz 1 first.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
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
