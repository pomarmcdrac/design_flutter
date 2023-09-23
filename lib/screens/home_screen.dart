import 'package:flutter/material.dart';

import 'package:disenos/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          const Background(),
          // Homebody
          _HomeBody(),
          
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation() ,
    );
  }
}

class _HomeBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      
      child: Column(
        children: [
          // Titulos
          PageTitle(),
          // Card Table
          CardTable(),
        ],
      ),

    );
  }
}