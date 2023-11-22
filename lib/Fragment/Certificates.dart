import 'package:flutter/material.dart';

class Certificates extends StatelessWidget {
  const Certificates({Key? key});

  @override
  Widget build(BuildContext context) {
    var myItems = [
      "lib/Assets/images/ssc.jpg",
      "lib/Assets/images/marks.jpg",
      "lib/Assets/images/rb.jpg",
      "lib/Assets/images/mesda.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Certificates"),
        backgroundColor: Colors.blue, // Set the app bar color
      ),
      body: Container(
        color: Colors.black, // Set the background color to black
        child: ListView.builder(
          itemCount: myItems.length,
          itemBuilder: (context, index) {
            return CertificateImage(imagePath: myItems[index]);
          },
        ),
      ),
    );
  }
}

class CertificateImage extends StatelessWidget {
  final String imagePath;

  const CertificateImage({Key? key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4, // Add elevation for a card-like appearance
        child: Column(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover, // Set the image fit mode
            ),
          ],
        ),
      ),
    );
  }
}
