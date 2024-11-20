import 'package:flutter/material.dart';
//import 'package:herbalhub/frontend/screens/medicinalprop_screen.dart';
import 'type_screen.dart';
import 'medicinalprop_screen.dart';
import 'region_screen.dart';
import 'parts_screen.dart';
import 'endangered_screen.dart';
import 'growth_screen.dart';
import 'lifespan_screen.dart';
import 'medicinal_uses_screen.dart';

class HtypeScreen extends StatelessWidget {
  const HtypeScreen({Key? key}) : super(key: key);

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
                        case 'Herbs':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TypeScreen()),
                          );
                          break;
                        case 'Shrubs':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MedicinalUsesScreen()),
                          );
                          break;
                        case 'Trees':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MedicinalpropScreen()),
                          );
                          break;
                        case 'Aquatic Plants':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegionScreen()),
                          );
                          break;
                        case 'Climbers':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PartsScreen()),
                          );
                          break;
                        case 'Vines':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EndangeredScreen()),
                          );
                          break;
                        case 'Roots':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GrowthScreen()),
                          );
                          break;
                        case 'Seeds':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LifespanScreen()),
                          );
                          break;
                        case 'Flowers':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LifespanScreen()),
                          );
                          break;
                        case 'Fruits':
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
  {'title': 'Herbs', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Shrubs', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Trees', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {
    'title': 'Aquatic Plants',
    'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'
  },
  {'title': 'Climbers', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Vines', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Roots', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Seeds', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Flowers', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
  {'title': 'Fruits', 'imagePath': 'lib/frontend/assets/images/tulsi.jpeg'},
];
