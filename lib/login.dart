import 'package:bookit/widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AppTitle,),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back!", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),),
                Text("Login to continue", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                InputField(label: "Email", type: TextInputType.emailAddress, obscured: false),
                SizedBox(height: 40,),
                InputField(label: "Password", type: TextInputType.visiblePassword, obscured: true),
                SizedBox(height: 20),
                RememberMe(),
                SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {}, 
                  color: Color.fromARGB(255, 168, 185, 230), 
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), 
                  elevation: 0, 
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15), 
                  child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("New to Bookit?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    InkWell(
                      onTap: () {Navigator.of(context).pop();}, 
                      child: Text("Create an account here.", 
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, 
                            decoration: TextDecoration.underline, 
                            decorationColor: Color.fromRGBO(93, 125, 212, 1), 
                            color: Color.fromRGBO(93, 125, 212, 1)), ))
                  ],
                )
              ],
            )
          )
        ]
        ),
    );
  }
}