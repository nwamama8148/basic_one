import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 40, // Adjust this value to bring the AppBar down
              left: 0,
              right: 0,
              child: AppBar(),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 18.0, right: 18.0, top: 90.0),
              child: Column(
                children: [
                  // HEADER TEXT SECTION HERE
                  const Center(
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        fontFamily: 'Sans Dm',
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                      ),
                    ),
                  ),

                  const Center(
                    child: Text(
                      'Invest and double your income now !!!',
                      style: TextStyle(
                        fontFamily: 'Sans Dm',
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  // HEADER TEXT SECTION ENDS HERE

                  // FORM FIELDS HERE
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Full Name',
                              hintText: 'Enter your full name',
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
