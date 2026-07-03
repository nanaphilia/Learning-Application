import 'package:flutter/material.dart';
import 'package:midterm_exam/menu.dart';
import 'account.dart';
import 'main.dart';
import 'result.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'ABOUT US',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Gothic',
              color: Colors.white,
              fontWeight: FontWeight.bold,
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
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Menu()));
              },
                icon: Image.asset('assets/icons/Home.png'),
                iconSize: 40,
                color: Colors.black,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Results()));
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
                icon: Image.asset('assets/icons/AboutActive.png'),
                iconSize: 40,
                color: Colors.white,),
            ],
          )),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/AboutUsBG.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/THEPT.png',
                  height: 100,
                  width: 315,
                ),
                Image.asset('assets/1Group.png',
                ),
                Container(
                  width: 315,
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Nana()));
                        },
                        child: Image.asset('assets/Nanaphilia.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 315,
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Psycho()));
                        },
                        child: Image.asset('assets/Psychopomp.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 315,
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Ryuu()));
                        },
                        child: Image.asset('assets/Ryuu.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 315,
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Cairo()));
                        },
                        child: Image.asset('assets/Cairo.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 315,
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Maki()));
                          },
                        child: Image.asset('assets/Maki.png'),
                      ),
                    ],
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

class Nana extends StatelessWidget {
  const Nana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'ABOUT US',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Gothic',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const About()),
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
                  image: AssetImage('assets/ProfileBG.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                    child: Image.asset('assets/PROGRAMMERS.png',
                      width: 290,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Image.asset('assets/NanaphiliaIntro.png',
                      )),
                ),
                const SizedBox(
                  width: 270,
                  child: Text('“It’s Not Who I Am Underneath, But What I Do That Defines Me.” \n- Batman',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Paneuropean',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    width: 270,
                    child: Text(
                      'Personal Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#27e6b2'),
                        fontSize: 17,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'First Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'REANNE',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Middle Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'CATUDAY',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Last Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'MENDOZA',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Role:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'DEVELOPER',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Gender:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'MALE',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Age:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        '20',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Birthday:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'DECEMBER 19, 2003',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Interest/Hobby:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 20, 0),
                      child: Text(
                        'PLAYING VIDEO GAMES',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    width: 270,
                    child: Text(
                      'Contact Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#27e6b2'),
                        fontSize: 17,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Phone Number:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 25),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        '09777121741',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  width: 270,
                  child: const Row(
                    children: [
                      Icon(Icons.facebook,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Reanne Mendoza',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Paneuropean'
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 10),
                  width: 270,
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage(
                          'assets/TIKTOK.png',
                        ),
                        size: 33,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('nanaphilia77',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Paneuropean'
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 270,
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 30),
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage(
                          'assets/IG.png',
                        ),
                        size: 33,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('nanaphilia77',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Paneuropean'
                        ),
                      ),
                    ],
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

class Psycho extends StatelessWidget {
  const Psycho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'ABOUT US',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Gothic',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const About()),
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
                  image: AssetImage('assets/ProfileBG.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                    child: Image.asset('assets/PROGRAMMERS.png',
                      width: 290,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                      child: Image.asset('assets/PsychopompIntro.png',
                      )),
                ),
                const SizedBox(
                  width: 270,
                  child: Text('“Do whatever you think is right. That\'s the way of the Fairy Tail mages.” - Makarov Dreyar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Gothic',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  width: 270,
                  child: Text(
                    'Personal Information',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: hexToColor('#27e6b2'),
                      fontSize: 17,
                      fontFamily: 'Gothic',
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'First Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                  decoration: BoxDecoration(
                    color: hexToColor('#000000').withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: hexToColor('#e9e9e9'))
                  ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'RAMIRR',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Middle Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'OPPUS',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Last Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'VILLAMARIN',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Role:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'DEVELOPER',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Gender:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'MALE',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Age:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        '20',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Birthday:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'NOVEMBER 25, 2003',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Interest/Hobby:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'WATCHING ANIME, READING MANHWA',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    width: 270,
                    child: Text(
                      'Contact Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#27e6b2'),
                        fontSize: 17,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Phone Number:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 25),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        '09392002327',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                const SizedBox(
                  width: 270,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.facebook,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text('Mir Villamarin',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontFamily: 'Gothic'
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ImageIcon(
                        AssetImage(
                          'assets/TIKTOK.png',
                        ),
                        size: 33,
                        color: Colors.white,
                      ),
                      Text('Psychopompv',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontFamily: 'Gothic'
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 8, 0, 40),
                  width: 270,
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage(
                          'assets/IG.png',
                        ),
                        size: 33,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Mir Villamarin',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Gothic'
                        ),
                      ),
                    ],
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

class Ryuu extends StatelessWidget {
  const Ryuu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'ABOUT US',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Gothic',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const About()),
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
                  image: AssetImage('assets/ProfileBG.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                    child: Image.asset('assets/DESIGNERS.png',
                      width: 290,
                    ),
                  ),
                  Image.asset('assets/RyuuIntro.png'),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: 270,
                    child: const Text('“If there’s a will, there’s a way.”',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                      width: 270,
                      child: Text(
                        'Personal Information',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#27e6b2'),
                          fontSize: 17,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                      width: 270,
                      child: Text(
                        'First Name:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: hexToColor('#000000').withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: hexToColor('#e9e9e9'))
                      ),
                      margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                      width: 270,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                        child: Text(
                          'PRINCESS CHARLOTTE',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#ffffff'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                      width: 270,
                      child: Text(
                        'Middle Name:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: hexToColor('#000000').withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: hexToColor('#e9e9e9'))
                      ),
                      margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                      width: 270,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                        child: Text(
                          'DAZ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#ffffff'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                      width: 270,
                      child: Text(
                        'Last Name:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: hexToColor('#000000').withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: hexToColor('#e9e9e9'))
                      ),
                      margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                      width: 270,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                        child: Text(
                          'FERNANDEZ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#ffffff'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                      width: 270,
                      child: Text(
                        'Role:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: hexToColor('#000000').withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: hexToColor('#e9e9e9'))
                      ),
                      margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                      width: 270,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                        child: Text(
                          'UI DESIGNER',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#ffffff'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                      width: 270,
                      child: Text(
                        'Gender:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: hexToColor('#000000').withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: hexToColor('#e9e9e9'))
                      ),
                      margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                      width: 270,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                        child: Text(
                          'FEMALE',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#ffffff'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                      width: 270,
                      child: Text(
                        'Age:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: hexToColor('#000000').withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: hexToColor('#e9e9e9'))
                      ),
                      margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                      width: 270,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                        child: Text(
                          '20',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#ffffff'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                      width: 270,
                      child: Text(
                        'Birthday:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: hexToColor('#000000').withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: hexToColor('#e9e9e9'))
                      ),
                      margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                      width: 270,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                        child: Text(
                          'DECEMBER 04, 2003',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#ffffff'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                      width: 270,
                      child: Text(
                        'Interest/Hobby:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: hexToColor('#000000').withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: hexToColor('#e9e9e9'))
                      ),
                      margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                      width: 270,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                        child: Text(
                          'SLEEPING, MJMP',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#ffffff'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                      width: 270,
                      child: Text(
                        'Contact Information',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#27e6b2'),
                          fontSize: 17,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                      width: 270,
                      child: Text(
                        'Phone Number:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: hexToColor('#000000').withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: hexToColor('#e9e9e9'))
                      ),
                      margin: const EdgeInsets.fromLTRB(0, 7, 0, 25),
                      width: 270,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                        child: Text(
                          '09977718361',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#ffffff'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                  Container(
                    width: 270,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const Row(
                      children: [
                        Icon(Icons.facebook,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Princess Charlotte Fernandez',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: 'Gothic'
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: 267,
                    child: const Row(
                      children: [
                        ImageIcon(
                          AssetImage('assets/TIKTOK.png'),
                          size: 36,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Charlotte',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: 'Gothic'
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    width: 267,
                    child: const Row(
                      children: [
                        ImageIcon(
                          AssetImage('assets/IG.png'),
                          size: 35,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('@charlotteluvstulips',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: 'Gothic'
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
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

class Cairo extends StatelessWidget {
  const Cairo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'ABOUT US',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Gothic',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const About()),
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
                  image: AssetImage('assets/ProfileBG.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                    child: Image.asset('assets/DESIGNERS.png',
                      width: 290,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Image.asset('assets/CairoIntro.png',
                      )),
                ),
                const SizedBox(
                  width: 270,
                  child: Text('“Like semicolon, I\'m also tired of winking all the time ; )”',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Gothic',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    width: 270,
                    child: Text(
                      'Personal Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#27e6b2'),
                        fontSize: 17,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'First Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'ALLEN',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Middle Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'ESTOLAN',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Last Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'BALAUAG',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Role:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'GRAPHIC DESIGNER',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Gender:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'MALE',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Age:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        '20',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Birthday:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'FEBRUARY 27, 2003',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Interest/Hobby:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 75,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 20, 0),
                      child: Text(
                        'Playing online games and watching some BL series and netflix movies.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    width: 270,
                    child: Text(
                      'Contact Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#27e6b2'),
                        fontSize: 17,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Phone Number:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Gothic',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 25),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        '09759900234',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                const SizedBox(
                  width: 270,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.facebook,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text('Allen Ark',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Gothic'
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ImageIcon(
                        AssetImage(
                          'assets/TIKTOK.png',
                        ),
                        size: 33,
                        color: Colors.white,
                      ),
                      Text('@llengthwise',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Gothic'
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 8, 0, 40),
                  width: 270,
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage(
                          'assets/IG.png',
                        ),
                        size: 33,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('@llengthwise',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Gothic'
                        ),
                      ),
                    ],
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

class Maki extends StatelessWidget {
  const Maki({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'ABOUT US',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Paneuropean',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const About()),
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
                  image: AssetImage('assets/ProfileBG.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                    child: Image.asset('assets/PROGRAMMERS.png',
                      width: 290,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Image.asset('assets/MakiIntro.png',
                      )),
                ),
                const SizedBox(
                  width: 270,
                  child: Text('“Dibs na yan.”',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Paneuropean',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    width: 270,
                    child: Text(
                      'Personal Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#27e6b2'),
                        fontSize: 17,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'First Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'MARK JOSH',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Middle Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'SIASON',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Last Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'BENITO',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Role:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'DEVELOPER',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Gender:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'MALE',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Age:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        '20',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Birthday:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        'NOVEMBER 07, 2003',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Interest/Hobby:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                    width: 270,
                    height: 55,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 20, 0),
                      child: Text(
                        'WATCHING MOVIES, LISTENING TO MUSIC',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    width: 270,
                    child: Text(
                      'Contact Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#27e6b2'),
                        fontSize: 17,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                    width: 270,
                    child: Text(
                      'Phone Number:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: hexToColor('#ffffff'),
                        fontSize: 14,
                        fontFamily: 'Paneuropean',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Container(
                    decoration: BoxDecoration(
                        color: hexToColor('#000000').withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: hexToColor('#e9e9e9'))
                    ),
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 25),
                    width: 270,
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                      child: Text(
                        '09701013364',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: hexToColor('#ffffff'),
                          fontSize: 14,
                          fontFamily: 'Paneuropean',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  width: 270,
                  child: const Row(
                    children: [
                      Icon(Icons.facebook,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Mark Josh Benito',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Paneuropean'
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 10),
                  width: 270,
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage(
                          'assets/TIKTOK.png',
                        ),
                        size: 33,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('deeznuts_____0',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Paneuropean'
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 270,
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 30),
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage(
                          'assets/IG.png',
                        ),
                        size: 33,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('@Koya_Maki',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Paneuropean'
                        ),
                      ),
                    ],
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




