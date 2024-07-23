import 'package:basic_one/create_account.dart';
import 'package:basic_one/my_home_page.dart';
import 'package:flutter/material.dart';

Color goldColor = const Color(0xFFD98F39);
const bottomAppBarColor = Color(0xFFF6F6F9);
const _goldColorLinear = Color(0xFFF0C735);

class AssetPage extends StatelessWidget {
  const AssetPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.83,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Text(
                            'My Assets',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Arial",
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.cancel,
                        size: 20,
                        color: txtColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Your total asset portfolio',
                  style: TextStyle(
                    color: txtColor,
                    fontSize: 12,
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'N203,935',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Georgia',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_double_arrow_up_rounded,
                        color: authsColor,
                        size: 18,
                      ),
                      Text(
                        '1.25%',
                        style: TextStyle(
                          fontSize: 10,
                          color: authsColor,
                          fontFamily: 'Verdana',
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Current Plans',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    fontFamily: 'New Times Roman',
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),

              // CARDS HERE
              SizedBox(
                height: 130,
                width: 275,
                child: Card(
                  // color: ,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10.0),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          goldColor,
                          _goldColorLinear,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            Text('Gold'),
                            Text('35% return'),
                          ],
                        ),
                        Image.asset(
                          'assets/images/asset_img_one.png',
                          fit: BoxFit.cover,
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // CARDS ENDS HERE
              const SizedBox(
                height: 10,
              ),
              const Text(
                'See All Plans ->',
                style: TextStyle(color: Colors.redAccent, fontSize: 12),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'History',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),

              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Item $index'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
