import 'package:class_works/Class_wirk_past/CurvedAppbar.dart';
import 'package:class_works/Class_wirk_past/Home.dart';
import 'package:flutter/material.dart';

class Classwork extends StatefulWidget {
  const Classwork({super.key});

  @override
  _ClassworkState createState() => _ClassworkState();
}

class _ClassworkState extends State<Classwork> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    if (emailController.text == "mail.com" &&
        passwordController.text == '123') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login Successfully')),
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
      emailController.clear();
      passwordController.clear();
    } else if (emailController.text != "mail.com" &&
        passwordController.text == '123') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid Email')),
      );
    } else if (emailController.text == "mail.com" &&
        passwordController.text != '123') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid Password')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid Email and Password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CurvedAppBar(title: 'Login Screen'),
      body: Builder(
        builder: (context) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("Assets/Images/img1.jpg"),
                    radius: 40,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        suffixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        suffixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.greenAccent),
                      ),
                      onPressed: login,
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Arial',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
