import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/Assets/images/BG.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExperienceTile(
                company: "Phone",
                icon: Icons.phone,
                role: "01625400441",
              ),
              _buildExperienceTile(
                company: "Email",
                icon: Icons.mail,
                role: "mehedi15-3955@diu.edu.bd",
              ),
              _buildExperienceTile(
                company: "Facebook",
                icon: Icons.facebook,
                role: "Mehedi Hasan Topu",
              ),
              _buildExperienceTile(
                company: "Linkedin",
                icon: Icons.link,
                role: "Mehedi Hasan Topu",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExperienceTile({
    required String company,
    required IconData icon,
    required String role,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 4, 117, 123), // Change the color to teal
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        company,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(role, style: TextStyle(fontSize: 18, color: Colors.white70)),
          SizedBox(height: 8), // Add spacing between role/years and about
        ],
      ),
    );
  }
}
