import 'package:ecommerce_ui/home/pages/home_page.dart';
import 'package:ecommerce_ui/onBoarding/pages/started_view.dart';
import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../components/square_tile.dart';
import 'Register_page.dart';
import 'forgot_password_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  "Welcome\nBack!",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 60),

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

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Forgot Password Action
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Login Button
                MyButton(
                  text: "Login",
                  onTap: () {
                    // Login Action
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StartedView(),
                      ),
                    );
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
                      "Create An Account.",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Sign Up Action
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        " Sign Up",
                        style: TextStyle(
                          color: Colors.pink,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.pink,
                          fontSize: 16,
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
