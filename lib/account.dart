import 'package:flutter/material.dart';
import 'package:midterm_exam/about.dart';
import 'package:midterm_exam/result.dart';
import 'main.dart';
import 'menu.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 110,
        backgroundColor: Colors.black,
        title: const Text('My Account',),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontFamily: 'Gothic',
          color: Colors.white,
          fontWeight: FontWeight.bold,
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Results()));
              },
                icon: Image.asset('assets/icons/Result.png'),
                iconSize: 40,
                color: Colors.white,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Account()));
              },
                icon: Image.asset('assets/icons/UserActive.png'),
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
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: 290,
                margin: const EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Image.asset('assets/pfp.png',
                          height: 100),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text('Reanne C. Mendoza',
                          style: TextStyle(
                            color: hexToColor('#27e6b2'),
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          )),
                    ),
                    const Text('@mendozarien@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gothic',
                          fontSize: 11,
                        )),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 9),
                      alignment: Alignment.centerLeft,
                      child: Text('PERSONAL INFORMATION',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#27e6b2'),
                            fontSize: 15,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: Text('First Name:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#e9e9e9'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                          )),
                    ),
                    Container(
                      width: 290,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5)
                      ),
                      child: const Text(
                        'REANNE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: Text('Middle Name:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#e9e9e9'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                          )),
                    ),
                    Container(
                      width: 290,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5)
                      ),
                      child: const Text(
                        'CATUDAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: Text('Last Name:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#e9e9e9'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                          )),
                    ),
                    Container(
                      width: 290,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5)
                      ),
                      child: const Text(
                        'MENDOZA',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 9),
                      alignment: Alignment.centerLeft,
                      child: Text('ACCOUNT INFORMATION',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#27e6b2'),
                            fontSize: 15,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: Text('Username:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#e9e9e9'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                          )),
                    ),
                    Container(
                      width: 290,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5)
                      ),
                      child: const Text(
                        'admin',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: Text('Password:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#e9e9e9'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                          )),
                    ),
                    Container(
                      width: 290,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5)
                      ),
                      child: const Text(
                        'admin',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 9),
                      alignment: Alignment.centerLeft,
                      child: Text('ACADEMIC INFORMATION',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#27e6b2'),
                            fontSize: 15,
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: Text('Student Number:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#e9e9e9'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                          )),
                    ),
                    Container(
                      width: 290,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5)
                      ),
                      child: const Text(
                        'B2022-0943',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: Text('Year Level:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: hexToColor('#e9e9e9'),
                            fontSize: 14,
                            fontFamily: 'Gothic',
                          )),
                    ),
                    Container(
                      width: 290,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5)
                      ),
                      child: const Text(
                        '2ND YEAR',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}