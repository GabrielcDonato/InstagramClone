import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFFffffff),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 140,
                    height: 60,
                    child: Image.asset(
                        'lib/core/assets/images/instagram_logo.png'),
                  ),
                  const SizedBox(
                    width: 95,
                  ),
                  SizedBox(
                    height: 60,
                    child: IconButton(
                      icon: const Icon(Icons.add_box_outlined),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    height: 60,
                    child: IconButton(
                      icon: const Icon(Icons.healing),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    height: 60,
                    child: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pink,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pink,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                      ],
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
}
