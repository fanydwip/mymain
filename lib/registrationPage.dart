import 'package:flutter/material.dart';
import 'package:mymain/homePage.dart';
import 'package:mymain/loginPage.dart';
import 'package:mymain/profilPage.dart';
import 'user_profil.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final emailController = TextEditingController();
    final password1Controller = TextEditingController();
    final password2Controller = TextEditingController();

    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text('Registrasi'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset("assets/images/Roti Fanni Logo.png"),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: password1Controller,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: password2Controller,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Ulangi Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Kembali'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          final userProfile = UserProfile(
                            username: usernameController.text,
                            email: emailController.text,
                            password: password1Controller.text,
                          );

                          // Simpan data ke ProfilPage
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProfilPage(userProfile: userProfile),
                            ),
                          );

                          // Kembali ke halaman login
                          Navigator.pop(context); // Menghapus halaman profil dari stack
                          Navigator.pop(context); // Menghapus halaman registrasi dari stack

                          // Menuju ke halaman login
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Loginpage(),
                            ),
                          );
                        }
                      },
                      child: Text('Daftar'),
                    ),
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
