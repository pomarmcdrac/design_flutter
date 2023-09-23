import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(icon: Icons.border_all_sharp , color: Colors.lightBlue, text: 'General',),
            _SingleCard(icon: Icons.directions_bus_sharp, color: Colors.purple, text: 'Transport',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.shopping_bag_sharp , color: Colors.pink, text: 'Shopping',),
            _SingleCard(icon: Icons.price_change_sharp, color: Colors.yellow, text: 'Bills',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.movie_sharp , color: Colors.blue , text: 'Entertaiment',),
            _SingleCard(icon: Icons.local_grocery_store_sharp, color: Colors.green, text: 'Grocery',),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({Key? key, 
  required this.icon, 
  required this.color, 
  required this.text
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) { 
    return _CardBackground(
      child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0.1,0.5],
                colors: [
                  Colors.white,
                  color,
                ],
              ),
            ),
            child: Icon( icon, size: 38, color: Colors.white,),
            height: 60,
            width: 60,
          ),
          const SizedBox( height: 20,),
          Text( text, style: TextStyle( color: color, fontSize: 15),)
        ]
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    Key? key, 
    required this.child,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

