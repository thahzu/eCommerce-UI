import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../components/square_tile.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),

                // Welcome Text
                const Text(
                  "Create an\naccount",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),

                // Username TextField
                const MyTextField(
                  hintText: "Username or Email",
                  icon: Icons.person,
                ),
                const SizedBox(height: 5),

                // Password TextField
                const MyTextField(
                  hintText: "Password",
                  icon: Icons.lock,
                  obscureText: true,
                  suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                ),
                const SizedBox(height: 5),

                // ConfirmPassword TextField
                const MyTextField(
                  hintText: "ConfirmPassword",
                  icon: Icons.lock,
                  obscureText: true,
                  suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                ),
                const SizedBox(height: 5),

                // Forgot Password
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {
                      // Forgot Password Action
                    },
                    child: const Text(
                      "By click Register button, you agree to the public offer",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Login Button
                MyButton(
                  text: "Create Account",
                  onTap: () {
                    // Login Action
                  },
                ),

                const SizedBox(height: 20),

                // OR Continue With
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[500],
                        ),
                      ),
                      Text(
                        " or continues with ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Social Media Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //gg logo
                    SquareTile(
                      imagePath: "images/gglogo.png",
                      onTap: () {},
                    ),
                    const SizedBox(width: 10),
                    // apple logo
                    SquareTile(
                      imagePath: "images/applelogo.png",
                      onTap: () {},
                    ),
                    const SizedBox(width: 10),
                    // fb logo
                    SquareTile(
                      imagePath: "images/fb_logo.png",
                      onTap: () {},
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 30),

                // Create Account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "I Already Have an Account ",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Sign Up Action
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 16,
                          decoration:TextDecoration.underline,
                          decorationColor: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
