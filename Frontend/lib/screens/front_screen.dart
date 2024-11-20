import 'package:flutter/material.dart';

// Import CategoriesScreen to allow navigation
import 'package:herbalhub/screens/categories_screen.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7F6D4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE7F6D4),
        elevation: 0,
        title: const Text(
          'HerbalHub',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD7E9B9),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search your next herbal discovery...',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.green[800]),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        // Navigate to the CategoriesScreen when the filter icon is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CategoriesScreen()),
                        );
                      },
                      child: Icon(Icons.filter_alt, color: Colors.green[800]),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Top Searches Section
              const Text(
                'Top Searches',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PlantCard(
                      title: 'Tulsi',
                      imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                    ),
                    PlantCard(
                      title: 'Hibiscus',
                      imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                    ),
                    PlantCard(
                      title: 'Aloe Vera',
                      imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                    ),
                    PlantCard(
                      title: 'Lavender',
                      imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Recents Section
              const Text(
                'Recents',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PlantCard(
                      title: 'Amla',
                      imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                    ),
                    PlantCard(
                      title: 'Fenugreek',
                      imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                    ),
                    PlantCard(
                      title: 'Ashwagandha',
                      imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                    ),
                    PlantCard(
                      title: 'Brahmi',
                      imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Suggestions for You Section
              const Text(
                'Suggestions for you',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              PlantCard(
                title: 'Jatamansi',
                imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                width: double.infinity,
              ),
              const SizedBox(height: 10),
              PlantCard(
                title: 'Brahmi',
                imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                width: double.infinity,
              ),
              const SizedBox(height: 10),
              PlantCard(
                title: 'Moringa',
                imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                width: double.infinity,
              ),
              const SizedBox(height: 10),
              PlantCard(
                title: 'Ginseng',
                imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                width: double.infinity,
              ),
              const SizedBox(height: 10),
              PlantCard(
                title: 'Turmeric',
                imagePath: 'lib/frontend/assets/images/tulsi.jpeg',
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFE7F6D4),
        selectedItemColor: Colors.green[800],
        unselectedItemColor: Colors.green[300],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_florist_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined), label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundImage:
                      AssetImage('lib/frontend/assets/images/tulsi.jpeg'),
                  radius: 12),
              label: ''),
        ],
      ),
    );
  }
}

// PlantCard Widget Definition
class PlantCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final double width;

  const PlantCard({
    required this.title,
    required this.imagePath,
    this.width = 150, // Default width for horizontal cards
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.5), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
