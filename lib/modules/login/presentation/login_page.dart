import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final languages = [
    'Português',
    'Inglês',
    'Alemão',
    'Italiano',
    'Frânces',
  ];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: DropdownButton<String>(
                  autofocus: true,
                  underline:
                      const SizedBox(), //tirar a linha em baixo do texto.
                  iconEnabledColor: Colors.black54,
                  dropdownColor: Colors.white,
                  alignment: Alignment.center,
                  value: value,
                  items: languages.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value = value),
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              Center(
                child: SizedBox(
                    height: 100,
                    width: 250,
                    child: Image.asset(
                        'lib/core/assets/images/instagram_logo.png')),
              ),
              Container(
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color(0xFF000000),
                    ),
                    decoration: const InputDecoration(
                      hintText: "Phone number, email or username",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color(0xFF000000),
                    ),
                    decoration: const InputDecoration(hintText: "Password"),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: 320,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  onPressed: () {},
                  child: const Text("Log In"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Forget your login Details?",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Get help logging in",
                    style: TextStyle(
                      color: Color(0xFF093697),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEBEBEB),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "OR",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 5,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEBEBEB),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 20,
                    child:
                        Image.asset('lib/core/assets/images/facebook_logo.png'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Login with Facebook",
                    style: TextStyle(
                      color: Color(0xFF0077FF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Container(
                height: 5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFEBEBEB),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color(0xFF093697),
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black54,
          ),
        ),
      );
}
