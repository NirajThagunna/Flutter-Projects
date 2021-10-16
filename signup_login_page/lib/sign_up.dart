import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text("Let's Get Started!",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 23,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('Create an Account', style: TextStyle(fontSize: 14),),
                    ],
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            ),
                            hintText: 'Name',
                          ),
                          style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            ),
                            hintText: 'Email',
                          ),
                          style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone_android),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            ),
                            hintText: 'Phone',
                          ),
                          style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            ),
                            hintText: 'Password',
                          ),
                          style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(35.0)),
                            ),
                            hintText: 'Confirm Password',
                          ),
                          style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 37,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF0054C9),
                            onPrimary: Colors.white,
                            shadowColor: Colors.greenAccent,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            minimumSize: const Size(180, 50),
                          ),
                          child: const Text('CREATE', style: TextStyle(fontSize: 14, letterSpacing: 1),),
                          onPressed: (){},
                        ),
                        const SizedBox(
                          height: 36.5,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                'Already have an account? ',
                                style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              GestureDetector(
                                child: const Text(
                                  ' Login here',
                                  style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w900),
                                ),
                                onTap: (){
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}


