import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({Key? key});

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
                education: "University",
                icon: Icons.school_sharp,
                name: "Daffodil international university",
                department: "Student in Computer Science and Engineering",
                years: "2021 - Present",
              ),
              _buildExperienceTile(
                education: "HSC",
                icon: Icons.school_sharp,
                name: "Police Lines school and College Kushtia",
                department: "Student in Science Department",
                years: "2016-2018",
              ),
              _buildExperienceTile(
                education: "SSC",
                icon: Icons.school_sharp,
                name: "Horinarayanpur ML High School",
                department: "Student in Science Department",
                years: "2014-2016",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExperienceTile({
    required String education,
    required IconData icon,
    required String name,
    required department,
    required String years,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 112, 120),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        education,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(fontSize: 18, color: Colors.white70)),
          Text(department, style: TextStyle(fontSize: 18, color: Colors.white)),
          Text(
            years,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 8), // Add spacing between role/years and about
        ],
      ),
    );
  }
}
