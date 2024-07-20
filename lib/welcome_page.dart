import 'package:basic_one/create_account.dart';
import 'package:basic_one/my_home_page.dart';
import 'package:flutter/material.dart';

import 'drawer_page.dart';

Color colGrey = const Color(0xFFFEFFFE);

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_active),
              onPressed: () {
                // Scaffold.of(context).openDrawer();
              },
            ),
          ],
        ),
        drawer: const DrawerPage(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //HEADER TEXT
              const Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Welcome, Jessie.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DM Sans',
                      fontSize: 34),
                ),
              ),
              //HEADER TEXT ENDS HERE

              const SizedBox(
                height: 15,
              ),

              // DASHBOARD HERE
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: authsBackColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 125,
                width: 354,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your total asset portfolio',
                      style: TextStyle(
                        color: authsColorFill,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      children: [
                        const Text(
                          'N203,935',
                          style: TextStyle(
                            color: authsColorFill,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Invest Now'))
                      ],
                    ),
                  ],
                ),
              ),
              // DASHBOARD ENDS HERE
            ],
          ),
        ),
      ),
    );
  }
}
