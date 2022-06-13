// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'register_page.dart';

class Initial extends StatefulWidget {
  Initial({Key? key}) : super(key: key);

  var primary = const Color.fromARGB(255, 255, 193, 143);
  var second = const Color.fromARGB(255, 101, 187, 88);

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  Initial instance = Initial();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.5,
          color: instance.primary,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Image.asset(
              "images/logo/LogoMov.gif",
              width: 350,
              height: 350,
            ),
          )),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          color: instance.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    /* LOGIN */
                    ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              MaterialStateProperty.all(instance.second),
                          elevation: MaterialStateProperty.all(15),
                        ),
                        onPressed: () {},
                        child: const Text("Já tem uma conta? Entre!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15))),
              ),

              /* CADASTRO */
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(15)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: const Text(
                    "Primeira vez no Universo Prematuro? Cadastre-se",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        )
      ],
    ));
  }
}
