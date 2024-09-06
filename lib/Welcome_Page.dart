import 'package:app_diet/Home_Page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      color: const Color(0xFF6CBF3F),
      child: Center(
        child: Text(
          'Hello Everyone',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24, 
          ),
        ),
      ),
    ),
          const SizedBox(height: 20),
          const Text(
            'Complete your grocery need easily',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black, 
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          // Tombol di bawah teks
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6CBF3F),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
