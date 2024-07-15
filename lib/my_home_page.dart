import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('HomePage'),
        // ),
        body: Column(
          children: [
            SizedBox(
              width: 300,
              child: Image.asset('assets/images/profile.png'),
            )
          ],
        ));
  }
}
