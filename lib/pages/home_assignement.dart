import 'package:flutter/material.dart';

class HomeAssignmentPage extends StatefulWidget {
  static const String id = '/home_assignment_page';

  const HomeAssignmentPage({Key? key}) : super(key: key);

  @override
  State<HomeAssignmentPage> createState() => _HomeAssignmentPageState();
}

class _HomeAssignmentPageState extends State<HomeAssignmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            colors: [
              Colors.black54,
              Colors.black38,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                    topLeft: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 20,
                                offset: Offset(0, 10),
                                color: Color.fromRGBO(171, 171, 171, 0.7),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              _itemsAll(title: 'FullName'),
                              _itemsAll(title: 'Email'),
                              _itemsAll(title: 'Phone'),
                              _itemsAll(title: 'Password'),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black54),
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Sign up with SNS'),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  'Facebook',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  'Google',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  'Apple',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemsAll({title}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: title,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
