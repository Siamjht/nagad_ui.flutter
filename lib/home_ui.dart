import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nagad_ui/payments.dart';
import 'package:nagad_ui/services.dart';

class NagadHomeUI extends StatefulWidget {
  const NagadHomeUI({super.key});

  @override
  State<NagadHomeUI> createState() => _NagadHomeUIState();
}

class _NagadHomeUIState extends State<NagadHomeUI> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFD7E49),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset('assets/icons/shadow_img.png'),
                      ),
                    ),
                  Center(
                    child: Container(margin: const EdgeInsets.only(top: 20),
                      child: Image.asset('assets/images/headFont.png')
                    ),
                  ),
                  Center(
                    child: Container(margin: const EdgeInsets.only(top: 80),
                        child: const Text(
                          "Siam Uddin",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20,right: 15),
                    child: Align(
                      alignment: const Alignment(0.9,0.2),
                      child: Image.asset('assets/icons/bell.png'),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 200,
                      margin: const EdgeInsets.only(top: 115),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 25,),
                          Image.asset('assets/icons/logo.png'),
                          // const SizedBox(width: 10,),
                          TextButton(
                            onPressed: (){},
                            child: const Text(
                              'Tap for Balance',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFD7E49),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25,),
                child: const Text(
                  'Services',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 225,
                  child: Services(),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25,),
                child: const Text(
                  'Payments',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 250,
                  child: Payments(),
                ),
              ),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/images/add_pic.png', fit: BoxFit.fill,),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/icons/logo.png'), label: 'Home'),
          BottomNavigationBarItem(icon: Image.asset('assets/icons/transaction.png',), label: 'Transaction'),
          BottomNavigationBarItem(icon: Image.asset('assets/icons/people.png'), label: 'People'),
          BottomNavigationBarItem(icon: Image.asset('assets/icons/my_nagad.png'), label: 'My Nagad'),
        ],
      ),
    );
  }
}
