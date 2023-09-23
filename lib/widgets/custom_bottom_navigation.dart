import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pinkAccent,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon( Icons.calendar_month_sharp),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.graphic_eq_sharp),
          label: 'Grafica'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.person_pin_circle_sharp),
          label: 'Usuarios'
        ),
      ],
    );
  }
}