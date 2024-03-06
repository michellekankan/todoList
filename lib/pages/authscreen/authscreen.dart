import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _authScreenState();
}

class _authScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    //build has Scaffold (like HTML)
    return Scaffold(
        appBar: AppBar(
          title: Text("Login/Signup"),
          backgroundColor: Color.fromARGB(255, 194, 199, 146),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.name, //用mac simulator打開鍵盤預設是abc
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "UserName is required!";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter UserName",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password is required!";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter Password",
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
