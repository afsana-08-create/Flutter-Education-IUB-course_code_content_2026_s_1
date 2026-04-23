import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  
  // Attribute 
  final String pageName;

  
  // Constructor
  const LandingPage({super.key, required this.pageName});

  // ---------------------------------------------------------


  final double pi = 3.14159; // Constant attribute

  // Method
  void printPageName() {
    print('The page name is: $pageName');
  }


  // Build method
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------



class LandingPageStatefull extends StatefulWidget {

  // Attribute
  final String pageName;

  // Constructor
  const LandingPageStatefull({super.key, required this.pageName});

  @override
  State<LandingPageStatefull> createState() => _LandingPageStatefullState();
}


class _LandingPageStatefullState extends State<LandingPageStatefull> {
  
  
  final double pi = 3.14159; // Constant attribute
  int counter = 0; // Variable attribute

  // Method
  void printPageName() {
    print('The page name is: ${widget.pageName}');
  }

  // Build method
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }


}

