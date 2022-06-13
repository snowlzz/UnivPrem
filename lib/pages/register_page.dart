import 'package:flutter/material.dart';
import 'package:univprem/models/usuario.dart';

import '../helpers/register_controller.dart';
import 'initial.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Initial instance = Initial();
  ContRegisterState cr = ContRegisterState();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: instance.primary,
      child: Column(children: [
        Container(
          padding: const EdgeInsets.only(top: 90),
          child: Image.asset(
            "images/logo/logologin.png",
            width: 150,
            height: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
              elevation: 25,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: cr.contEmail,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: "E-mail",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25))),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: cr.contPass,
                        obscureText: true,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: "Senha",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 15),
                      child: ElevatedButton(
                          onPressed: () {
                            cr.registerUser(Usuario());
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              elevation: MaterialStateProperty.all(15),
                              backgroundColor:
                                  MaterialStateProperty.all(instance.second)),
                          child: const Text(
                            "Cadastrar",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Center(
                        child: Text(cr.erroM,
                            style: const TextStyle(color: Colors.red)))
                  ],
                ),
              )),
        )
      ]),
    )));
  }
}
