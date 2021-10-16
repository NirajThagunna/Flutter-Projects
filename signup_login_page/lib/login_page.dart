import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_login_page/sign_up.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 70),
                child: Image.asset('assets/images/login-page-logo.jpg',
                  width: 150,
                ),
              ),
              Text(
                  'Welcome back!',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 23),
                  )
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Please login first!',
                style: TextStyle(color: Colors.black, fontSize: 14,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(22.3),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.account_circle_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                          hintText: 'Username',
                          // fillColor: Colors.blue,
                          // focusColor: Colors.blue,
                          // hoverColor: Colors.blue,
                        ),
                        style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock_open),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                          hintText: 'Password',
                        ),
                        style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      // ElevatedButton(
                      //   child: const Text('LOG IN', textScaleFactor: 1.3,),
                      //   onPressed: (){},
                      //   style: ButtonStyle(
                      //     padding: MaterialStateProperty.all(const EdgeInsets.all(15.0)),
                      //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //       RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(30.0),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // MaterialButton(
                      //   child: const Text('LOG IN',
                      //   style: TextStyle(color: Colors.white, fontSize: 20),),
                      //   onPressed: (){},
                      //   minWidth: 200,
                      //   height: 50,
                      //   color: Colors.blue,
                      //   padding: const EdgeInsets.all(10.0),
                      //   // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //   //   RoundedRectangleBorder(
                      //   //     borderRadius: BorderRadius.circular(30.0),
                      //   //   )
                      //   // ),
                      // )
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff0049A0),
                          onPrimary: Colors.white,
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          minimumSize: const Size(180, 50),
                        ),
                        child: const Text('LOG IN', style: TextStyle(fontSize: 14, letterSpacing: 1),),
                        onPressed: (){},
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Or connect using',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ButtonBar(
                        // mainAxisSize: MainAxisSize.min,
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF2E5E8E),
                              onPrimary: Colors.white,
                              shadowColor: Colors.greenAccent,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              // minimumSize: const Size(140, 50),
                              minimumSize: const Size(140, 40),
                            ),
                            child: Row(
                              children: const <Widget>[
                                Icon(Icons.facebook, size: 16,),
                                Text(' Facebook', style: TextStyle(fontSize: 14),),
                              ],
                            ),
                            // child: const Text('LOG IN', style: TextStyle(fontSize: 20),),
                            onPressed: (){},
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFFF4039),
                              onPrimary: Colors.white,
                              shadowColor: Colors.greenAccent,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              // minimumSize: const Size(140, 50),
                              minimumSize: const Size(140, 40),
                            ),
                            child: Row(
                              children: const <Widget>[
                                Icon(Icons.g_mobiledata_outlined),
                                Text(' Google', style: TextStyle(fontSize: 14),),
                              ],
                            ),
                            // child: const Text('LOG IN', style: TextStyle(fontSize: 20),),
                            onPressed: (){},
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      // RichText(
                      //   text: const TextSpan(
                      //       text: 'Don\'t have an account?',
                      //       children: <TextSpan>[
                      //         TextSpan(
                      //           text: ' Sign Up',
                      //         )
                      //       ]
                      //   ),
                      // )
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Don\'t have an account?',
                              style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            GestureDetector(
                              child: const Text(
                                ' Sign Up',
                                style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w900),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ));
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
      ),
    );
  }
}

