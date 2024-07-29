import 'package:flutter/material.dart';
import 'package:twittify_mobile/login.dart';
import 'package:twittify_mobile/register.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              padding: const EdgeInsets.only(
                  top: 0, bottom: 0, left: 16.0, right: 16.0),
              width: double.infinity,
              height: 400,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Twittify",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                              child: const Text("Login"),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()));
                              },
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                side:
                                    MaterialStateProperty.all(const BorderSide(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                )),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.only(top: 15, bottom: 15)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                textStyle: MaterialStateProperty.all(
                                    const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                              ),
                              child: const Text("Register"),
                            ))
                      ],
                    )
                  ]))),
    );
  }
}
