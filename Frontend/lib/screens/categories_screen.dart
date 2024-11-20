import 'package:flutter/material.dart';
//import 'package:herbalhub/frontend/screens/medicinalprop_screen.dart';
import 'medicinal_uses_screen.dart';
import 'htype_screen.dart';
import 'hmedicinalprop_screen.dart';
import 'region_screen.dart';
import 'parts_screen.dart';
import 'endangered_screen.dart';
import 'growth_screen.dart';
import 'lifespan_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

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
                'Categories',
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
                        case 'Type':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HtypeScreen()),
                          );
                          break;
                        case 'Medicine':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MedicinalUsesScreen()),
                          );
                          break;
                        case 'Medicinal Properties':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HmedicinalpropScreen()),
                          );
                          break;
                        case 'Region':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegionScreen()),
                          );
                          break;
                        case 'Parts':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PartsScreen()),
                          );
                          break;
                        case 'Endangered':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndangeredScreen()),
                          );
                          break;
                        case 'Growth':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GrowthScreen()),
                          );
                          break;
                        case 'Lifespan':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LifespanScreen()),
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
  {'title': 'Type', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Medicine', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {
    'title': 'Medicinal Properties',
    'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'
  },
  {'title': 'Region', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Parts', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Endangered', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Growth', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Lifespan', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
];
