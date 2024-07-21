import 'package:basic_one/asset_page.dart';
import 'package:basic_one/create_account.dart';
import 'package:basic_one/my_home_page.dart';
import 'package:basic_one/notification_page.dart';
import 'package:flutter/material.dart';

import 'drawer_page.dart';

Color colGrey = const Color(0xFFFEFFFE);

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  final List<String> images = [
    'assets/images/card3.png',
    'assets/images/card_img.png',
    'assets/images/card2.png',
    'assets/images/card_img.png',
    'assets/images/card3.png',
    'assets/images/card2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_active),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
                  ),
                );
              },
            ),
          ],
        ),
        drawer: const DrawerPage(),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 3, left: 20.0, right: 20, bottom: 20),
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
                      fontSize: 20),
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
                height: 98,
                width: 354,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Your total asset portfolio',
                          style: TextStyle(
                            color: authsColorFill,
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'N203,935',
                              style: TextStyle(
                                color: authsColorFill,
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Invest Now'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // DASHBOARD ENDS HERE

              const SizedBox(
                height: 15,
              ),

              // SUB HEADING HERE
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Plans',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                  Text(
                    'See All ->',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ],
              ),
              // SUB HEADING ENDS HERE

              // CARDS AREA HERE
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
                child: SizedBox(
                  height: 120, // Set a fixed height for the horizontal list
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        // color: Colors.blue[100 * (index % 9 + 1)],
                        child: SizedBox(
                          // width: 100,
                          // height: 120,
                          child: Center(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const AssetPage(),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  images[index % images.length],
                                )),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              // CARDS AREA ENDS HERE
            ],
          ),
        ),
      ),
    );
  }
}
