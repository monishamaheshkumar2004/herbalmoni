import 'package:flutter/material.dart';

class ProfessionalRegistrationScreen extends StatefulWidget {
  const ProfessionalRegistrationScreen({super.key});

  @override
  _ProfessionalRegistrationScreenState createState() =>
      _ProfessionalRegistrationScreenState();
}

class _ProfessionalRegistrationScreenState
    extends State<ProfessionalRegistrationScreen> {
  final titleController = TextEditingController();
  final licenseController = TextEditingController();
  final affiliationController = TextEditingController();
  final verificationController = TextEditingController();
  final passwordController = TextEditingController();

  String? selectedTitle;
  String? experienceLevel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'lib/frontend/assets/images/home_page_logo.png',
              height: 100,
            ),
            const SizedBox(height: 16),
            const Text(
              'HerbalHub',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            buildTextField(
                Icons.email, 'Enter your mailID', TextInputType.emailAddress),
            const SizedBox(height: 10),
            buildTextField(
                Icons.badge, 'Enter Your License Number', TextInputType.text),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.green[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.work),
                hintText: 'Professional title',
              ),
              value: selectedTitle,
              items: const [
                DropdownMenuItem(value: 'Doctor', child: Text('Doctor')),
                DropdownMenuItem(
                    value: 'Practitioner', child: Text('Practitioner')),
                DropdownMenuItem(
                    value: 'Researcher', child: Text('Researcher')),
              ],
              onChanged: (value) {
                setState(() {
                  selectedTitle = value;
                });
              },
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.green[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.timeline),
                hintText: 'Experience Level',
              ),
              value: experienceLevel,
              items: const [
                DropdownMenuItem(value: '1', child: Text('1')),
                DropdownMenuItem(value: '2', child: Text('2')),
                DropdownMenuItem(value: '3', child: Text('3')),
              ],
              onChanged: (value) {
                setState(() {
                  experienceLevel = value;
                });
              },
            ),
            const SizedBox(height: 10),
            buildTextField(Icons.apartment, 'Affiliation/Organization',
                TextInputType.text),
            const SizedBox(height: 10),
            buildTextField(Icons.document_scanner, 'Verification document',
                TextInputType.text),
            const SizedBox(height: 10),
            buildTextField(
                Icons.lock, 'Password setup', TextInputType.visiblePassword,
                obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement login functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Need help with sign in or sign up ?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'HerbalHub ©',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(IconData icon, String hint, TextInputType keyboardType,
      {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.green[100],
        prefixIcon: Icon(icon),
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
