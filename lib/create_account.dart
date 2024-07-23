import 'package:basic_one/welcome_page.dart';
import 'package:flutter/material.dart';

Color authsBackColor = const Color(0xFF31A062);
Color authsFillColor = const Color(0xFFFFFFFF);
Color txtColor = const Color(0xFFB3B3B3);

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
                  Padding(
                    padding: const EdgeInsets.only(top: 48.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Full Name',
                              hintText: 'Enter your full name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14.0),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your full name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email Address',
                              hintText: 'Enter your email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14.0),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter a unique Password',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14.0),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your full name';
                              }
                              return null;
                            },
                          ),
                          // FORM FIELDS ENDS HERE

                          const SizedBox(
                            height: 25,
                          ),

                          // SIGNUP BUTTONS HERE
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                                minWidth: 354.00, minHeight: 50.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: authsBackColor,
                                foregroundColor: authsFillColor,
                              ),
                              onPressed: () {
                                if (_formKey.currentState != null) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Processing Data'),
                                    ),
                                  );
                                }
                              },
                              child: const Text(
                                'Create Account',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'SF Pro'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          // LOGIN BUTTONS HERE
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WelcomePage(),
                                ),
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                                color: authsBackColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
