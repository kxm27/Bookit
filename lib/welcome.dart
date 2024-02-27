import 'package:bookit/widgets.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: appTitle),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Welcome to Bookit!", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),),
                Text("Please select your account type to \nget started", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
              ],
            ),
          ),
          const SizedBox(height: 95,),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("register");
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 168, 185, 230),
                          borderRadius: BorderRadius.circular(30),
                          ),
                        child: const Icon(Icons.person, size: 150, color: Colors.white,),
                      ),
                      const Text("Customer", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),)
                    ],
                  ),
                ),
                 InkWell(
                  onTap: () {Navigator.of(context).pushNamed("register");},
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 168, 185, 230),
                          borderRadius: BorderRadius.circular(30),
                          ),
                        child: const Icon(Icons.business, size: 150, color: Colors.white,),
                      ),
                      const Text("Service Provider", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),)
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 100,),
          const Text("Already have an account?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          MaterialButton(
            onPressed: () {Navigator.of(context).pushNamed("login");}, 
            color: const Color.fromARGB(255, 168, 185, 230), 
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), 
            elevation: 0, 
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), 
            child: const Text("Go to login page", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            )
        ],
      ),
    );
  }
}