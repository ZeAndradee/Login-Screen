// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

List<String> email = ['test95@email.com', 'test96@email.com'];
List<String> senha = ['pass123', 'pass321'];

String userEmail = '';
String userPass = '';

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Welcome back"),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Email"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                onChanged: (email) {
                  userEmail = email;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'example@email.com',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Password"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                onChanged: (senha) {
                  userPass = senha;
                },
                obscureText: true,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    hintText: 'Type your password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (email.contains(userEmail)) {
                    print('Email "$userEmail" existe.');
                    int posicaoEmail = email.indexOf(userEmail);
                    dynamic senhaCorrespondente = senha[posicaoEmail];
                    print('Senha digitada: $userPass');
                    print('Senha correta: $senhaCorrespondente');
                    if (userPass == senhaCorrespondente) {
                      print("Bem vindo");
                      Navigator.popAndPushNamed(context, '/main');
                    } else {
                      print("Email ou senha incorretos");
                    }
                  } else {
                    print("Email ou senha incorretos.");
                  }
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
