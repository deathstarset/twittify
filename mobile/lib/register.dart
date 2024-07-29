import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Create Account",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          labelText: "Enter your name",
                          filled: true,
                          fillColor: const Color(0xFFE8ECF4)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          labelText: "Enter your email",
                          filled: true,
                          fillColor: const Color(0xFFE8ECF4)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          labelText: "Enter your username",
                          filled: true,
                          fillColor: const Color(0xFFE8ECF4)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          labelText: "Enter your password",
                          filled: true,
                          fillColor: const Color(0xFFE8ECF4)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(top: 16, bottom: 16),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0))),
                        child: const Text("Register"),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.black,
                          height: 2,
                        )),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text("Or Register with"),
                        ),
                        Expanded(
                            child: Container(
                          color: Colors.black,
                          height: 2,
                        ))
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(top: 6, bottom: 6),
                              backgroundColor: const Color(0xFFE8ECF4),
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0))),
                          child: const Image(
                            image: AssetImage("assets/images/google.png"),
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
                const Text("Already have an account? Login")
              ],
            )));
  }
}
