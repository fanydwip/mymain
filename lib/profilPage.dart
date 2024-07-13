import 'package:flutter/material.dart';
import 'user_profil.dart';

class ProfilPage extends StatelessWidget {
  final UserProfile userProfile;

  const ProfilPage({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Foto Profil
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profil.png'),
              ),
              SizedBox(height: 20),
              // Nama
              Text(
                'Nama: ${userProfile.username}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Email
              Text(
                'Email: ${userProfile.email}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              // Tombol Kembali
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
