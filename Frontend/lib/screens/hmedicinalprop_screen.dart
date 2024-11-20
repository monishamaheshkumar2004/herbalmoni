import 'package:flutter/material.dart';
//import 'package:herbalhub/frontend/screens/medicinalprop_screen.dart';
import 'type_screen.dart';
import 'medicinalprop_screen.dart';
import 'region_screen.dart';
import 'parts_screen.dart';
import 'endangered_screen.dart';
import 'growth_screen.dart';
import 'medicinal_uses_screen.dart';

class HmedicinalpropScreen extends StatelessWidget {
  const HmedicinalpropScreen({Key? key}) : super(key: key);

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
                'Medicinal Properties',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.0,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to respective screen based on the tapped category
                      switch (categories[index]['title']) {
                        case 'Rasa(Taste)':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TypeScreen()),
                          );
                          break;
                        case 'Madhura(Sweet)':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MedicinalUsesScreen()),
                          );
                          break;
                        case 'Amla(Sour)':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MedicinalpropScreen()),
                          );
                          break;
                        case 'Lavana(Salty)':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegionScreen()),
                          );
                          break;
                        case 'Katu(Pungent)':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PartsScreen()),
                          );
                          break;
                        case 'Tikta(Bitter)':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndangeredScreen()),
                          );
                          break;
                        case 'Kashaya(Astringent)':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GrowthScreen()),
                          );
                          break;

                        default:
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  '${categories[index]['title']} page is under development'),
                            ),
                          );
                      }
                    },
                    child: CategoryCard(
                      title: categories[index]['title'] as String,
                      imagePath: categories[index]['imagePath'] as String,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const CategoryCard({
    required this.title,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black.withOpacity(0.3),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
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

final List<Map<String, String>> categories = [
  {
    'title': 'Rasa(Taste)',
    'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'
  },
  {
    'title': 'Madhura(Sweet)',
    'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'
  },
  {'title': 'Amla(Sour)', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {
    'title': 'Lavana(Salty)',
    'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'
  },
  {
    'title': 'Katu(Pungent)',
    'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'
  },
  {
    'title': 'Tikta(Bitter)',
    'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'
  },
  {
    'title': 'Kashaya(Astringent)',
    'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'
  },
];
