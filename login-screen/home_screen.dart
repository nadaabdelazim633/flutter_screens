import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          const Text(
            'دعم وتمكين لمستقبلٍ أفضل لفئاتنا الخاصة',
            style: TextStyle(fontSize: 20, color: Colors.pink),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Image.asset('assets/images/kid.png', height: 250), 
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text('دعنا نبدأ', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
