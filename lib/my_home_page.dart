import 'package:basic_one/create_account.dart';
import 'package:flutter/material.dart';

const color4F4F4F = Color(0xFF4F4F4F);
const authsColor = Color(0xFF31A062);
const authsColorFill = Color(0xFFFFFFFF);

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  IMAGE SECTION
            Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 30.0),
              child: Center(
                child: SizedBox(
                  width: 250,
                  height: 274.0,
                  child: Image.asset(
                    'assets/images/next_page.png',
                  ),
                ),
              ),
            ),
            //  IMAGE SECTION ENDS HERE

            //  TEXT SECTION HERE
            const Text(
              'Stay on top of your finance with us',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Dm Sans',
                  fontSize: 32,
                  letterSpacing: -2.0,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: color4F4F4F,
                ),
                'we are your new financial Advisors to recommend the best investments for you'),
            //  TEXT SECTION ENDS HERE

            //  BUTTON SECTION HERE
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ElevatedButton(
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreateAccount()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: authsColor,
                  foregroundColor: authsColorFill,
                  // minimumSize: size.wi(const Size(200, 50)), // Set the minimum width and height
                ),
                child: const SizedBox(
                  width: 354,
                  height: 60,
                  child: Center(
                    child: Text(
                      // textAlign: TextAlign.center,
                      'Create Account',
                      style: TextStyle(),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: authsColor,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
            )
            //  BUTTON SECTION ENDS HERE
          ],
        ),
      ),
    );
  }
}
          //  TEXT SECTION ENDS HERE

      
