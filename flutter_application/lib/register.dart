import 'package:flutter/material.dart';
import 'package:flutter_application/login.dart';
import 'package:flutter_application/screen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/download.jpg'),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('creat new account',style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      // hintText: 'Enter y email',
                      label: const Text('Name'),
                      prefixIcon: const Icon(Icons.email_rounded),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.blue))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      // hintText: 'Enter y email',
                      label: const Text('Email'),
                      prefixIcon: const Icon(Icons.email_rounded),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.blue))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      // hintText: 'Enter y email',
                      label: const Text('Password'),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.blue))),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: () {
                   Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) =>  Screen()));
                }, 
                style: ElevatedButton.styleFrom(fixedSize:  const Size(500, 40),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                child: const Text('register')),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('if u have an account'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const login(),
                          ));
                        },
                        child: const Text('login now'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}