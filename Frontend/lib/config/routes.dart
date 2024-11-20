import 'package:flutter/material.dart';
import 'package:herbalhub/screens/home_screen.dart';
import 'package:herbalhub/screens/role_selection/roleselection_screen.dart';
import 'package:herbalhub/auth/login_screen.dart';
import 'package:herbalhub/auth/professional_registration_screen.dart';
import 'package:herbalhub/screens/front_screen.dart';
import 'package:herbalhub/screens/categories_screen.dart';

class Routes {
  static const String home = '/';
  static const String roleSelection = '/roleSelection';
  static const String login = '/login';
  static const String professionalRegistration = '/professionalRegistration';
  static const String frontScreen = '/frontScreen';
  static const String categoriesScreen = '/categoriesScreen'; // Corrected

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
      roleSelection: (context) => const RoleSelectionScreen(),
      login: (context) => LoginScreen(),
      professionalRegistration: (context) =>
          const ProfessionalRegistrationScreen(),
      frontScreen: (context) => const FrontScreen(),
      categoriesScreen: (context) => CategoriesScreen(), // Corrected
    };
  }
}
