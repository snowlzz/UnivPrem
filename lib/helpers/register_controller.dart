import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../models/usuario.dart';
import '../pages/register_page.dart';

class ContRegister extends StatefulWidget {
  const ContRegister({Key? key}) : super(key: key);

  @override
  State<ContRegister> createState() => ContRegisterState();
}

class ContRegisterState extends State<ContRegister> {
  TextEditingController contEmail = TextEditingController();
  TextEditingController contPass = TextEditingController();
  String erroM = "";

  static final ContRegister cont = ContRegister();

  Future validateFields() async {
    String email = contEmail.text;
    String pass = contPass.text;

    if (email.isNotEmpty && email.contains("@")) {
      if (pass.length <= 5 && pass.isNotEmpty) {
        setState(() {
          erroM = "";
        });

        Usuario usuario = Usuario();
        usuario.email = email;
        usuario.pass = pass;
        registerUser(usuario);
      } else {
        setState(() {
          erroM = "Senha curta, insira mais de 5 caracteres";
        });
      }
    } else {
      setState(() {
        erroM = "E-mail inválido";
      });
    }
  }

  Future registerUser(Usuario usuario) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth
        .createUserWithEmailAndPassword(
            email: usuario.email!, password: usuario.pass!)
        .then((firebaseUser) {
      setState(() {
        erroM = "Sucesso";
      });
    }).catchError((error) {
      setState(() {
        erroM = "Erro ao cadastrar usuario, verifique os campos novamente";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Register();
  }
}



// class RegisterHelper {
//   TextEditingController contEmail = TextEditingController();
//   TextEditingController contPass = TextEditingController();
//   String erroM = "";

//   static final RegisterHelper _instance = RegisterHelper.internal();
//   factory RegisterHelper() => _instance;
//   RegisterHelper.internal();

   


// import 'package:flutter/material.dart';

// import '../pages/register_page.dart';

// class ContRegister extends StatefulWidget {
//   const ContRegister({Key? key}) : super(key: key);

//   @override
//   State<ContRegister> createState() => _ContRegisterState();
// }

// class _ContRegisterState extends State<ContRegister> {
//   Register reg = const Register();

//   TextEditingController contEmail = TextEditingController();
//   TextEditingController contPass = TextEditingController();

//   String _errorM = "";

//   @override
//   Widget build(BuildContext context) {
//     return Register();
//   }
// }
