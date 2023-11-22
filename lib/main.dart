import 'package:flutter/material.dart';
import 'package:my_protfolio1/Fragment/Contact.dart';
import 'package:my_protfolio1/Fragment/Skills.dart';
import 'package:my_protfolio1/Fragment/Experiences.dart';
import 'package:my_protfolio1/Fragment/About.dart';
import 'package:my_protfolio1/Fragment/Education.dart';
import 'package:my_protfolio1/screens/home_screen.dart';
import 'package:my_protfolio1/CalculatorScreen.dart';
import 'package:my_protfolio1/screens/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mehedi Hasan Topu",
            style: Theme.of(context).textTheme.titleLarge!,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.person,
                    color: Color.fromARGB(255, 171, 206, 212)),
                text: 'About',
              ),
              Tab(
                icon: Icon(Icons.school_sharp,
                    color: Color.fromARGB(255, 171, 206, 212)),
                text: 'Education',
              ),
              Tab(
                icon:
                    Icon(Icons.star, color: Color.fromARGB(255, 171, 206, 212)),
                text: 'Skills',
              ),
              Tab(
                icon:
                    Icon(Icons.work, color: Color.fromARGB(255, 171, 206, 212)),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.contact_phone,
                    color: Color.fromARGB(255, 171, 206, 212)),
                text: 'Contact',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 2, 9, 21),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  padding: const EdgeInsets.all(0),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(221, 4, 22, 50)),
                  child: UserAccountsDrawerHeader(
                    accountName: const Text(
                      "Mehedi Hasan Topu",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    accountEmail: const Text(
                      "mehedi15-3955@diu.edu.bd",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("lib/Assets/images/my_phot.jpg"),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                    ),
                  ),
                ),

                ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(
                    'Protfolio',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white), // Set text color to white
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeActivity()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.quiz),
                  title: Text(
                    'Quiz',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white), // Set text color to white
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuizScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.calculate),
                  title: Text(
                    'Calculator',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Colors.white), // Set text color to white
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalculatorScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.cloud),
                  title: Text(
                    'Weather',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Colors.white), // Set text color to white
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),

                // Add more ListTile items for other navigation options with white text color
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            About(),
            Education(),
            Skills(),
            Experiences(),
            Contact(),
          ],
        ),
      ),
    );
  }
}
