import 'package:flutter/material.dart';

class LifespanScreen extends StatelessWidget {
  const LifespanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7F6D4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE7F6D4),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'HerbalHub',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Medicinal Uses',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  HerbalCard(
                    title: 'Tulsi',
                    description: 'Reduces stress and boosts immunity',
                    imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                  ),
                  HerbalCard(
                    title: 'Hibiscus',
                    description: 'Lowers blood pressure and cholesterol',
                    imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                  ),
                  HerbalCard(
                    title: 'Kutki',
                    description: 'Supports liver health and digestion',
                    imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                  ),
                  HerbalCard(
                    title: 'Saffron',
                    description: 'Improves mood, memory, and skin health',
                    imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                  ),
                  HerbalCard(
                    title: 'Sarpagandha',
                    description: 'Reduces hypertension and anxiety',
                    imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HerbalCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const HerbalCard({
    required this.title,
    required this.description,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.6), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
