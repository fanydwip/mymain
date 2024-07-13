import 'package:flutter/material.dart';
import 'package:mymain/Screens/home_view.dart';
import 'package:mymain/homePage.dart';
import 'package:mymain/registrationPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mymain/user_profil.dart'; // Pastikan ini mengarah ke file yang benar

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  String _loginUrl = 'https://fakestoreapi.com/auth/login'; // Replace with your actual URL

  Future<void> _login(BuildContext context) async {
    final response = await http.post(
      Uri.parse(_loginUrl),
      body: {
        'username': usernameController.text,
        'password': passwordController.text,
      },
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      // Assume you get a user profile from the response data
      UserProfile userProfile = UserProfile(
        username: usernameController.text,
        email: 'email@example.com', // Replace with actual email from the response data if available
        password: usernameController.text
      );

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomeView(userProfile: userProfile); // Menyertakan userProfile
      }));
    } else {
      print('Login failed: ${response.statusCode}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login failed: Server error'),
        ),
      );
    }
  }

  void Login(BuildContext context, String username, String password) {
    print('Login successful!');
    if (username == "admin" && password == "admin") {
      UserProfile userProfile = UserProfile(
        username: username,
        email: 'admin@example.com', // Contoh email
        password: password
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return HomeView(userProfile: userProfile); // Menyertakan userProfile
        }),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning'),
          content: const Text('Password Salah, silahkan ulangi lagi'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.centerLeft, child: Text('Login')),
        //leading: Icon(Icons.home),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset("assets/images/Roti Fanni Logo.png"),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username tidak boleh kosong';
                    }
                    return null;
                  },
                  controller: usernameController,
                  decoration: InputDecoration(
                      labelText: 'username', border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'password', border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationPage()));
                      },
                      child: Text('Register'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('klik login');

                        if (formkey.currentState!.validate()) {
                          _login(context);
                        }
                      },
                      child: Text('Login'),
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
