import 'package:flutter/material.dart';

Widget AppTitle = SizedBox(height: 45, child: Image.asset('assets/BookitTitle.png', fit: BoxFit.fitHeight,));

class InputField extends StatefulWidget {
  final String label;
  final TextInputType type;
  final bool obscured;
  const InputField({super.key, required this.label, required this.type, required this.obscured});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.label, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                TextField(
                  style: TextStyle(fontSize: 20,),
                  maxLines: 1,
                  keyboardType: widget.type,
                  obscureText: widget.obscured,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 227, 233, 249),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                  ),
                ),
    ]);
  }
}

class SignButton extends StatefulWidget {
  final String text;
  const SignButton({super.key, required this.text});

  @override
  State<SignButton> createState() => _SignButtonState();
}

class _SignButtonState extends State<SignButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {}, 
      color: Color.fromARGB(255, 168, 185, 230), 
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), 
      elevation: 0, 
      padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15), 
      child: Text(widget.text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),);
  }
}

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool x = false;
  
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Checkbox(
                value: x, 
                onChanged: (value) {setState(() {x = !x;});},
                activeColor: Color.fromARGB(255, 168, 185, 230),
                checkColor: Colors.black,
                ),
              Text("Remember me", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                ],
              );
          }
}