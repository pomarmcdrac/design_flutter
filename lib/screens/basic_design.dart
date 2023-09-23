import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          const Image(image: AssetImage('assets/tron.jpg')),

          //Titulo
          const Title(),

          //Button Section
          const ButtonSection(),

          //Description
          Container(
            margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
            child: const Text(
              'Deserunt veniam nulla nulla id. Proident labore ut voluptate ad minim voluptate magna ea et proident fugiat dolore nisi labore. Occaecat dolor exercitation proident Lorem est amet est cillum veniam anim in quis labore. Non nisi sint esse veniam deserunt et. Consectetur consequat commodo consequat nostrud Lorem nisi sunt. Commodo quis aliqua fugiat magna. Proident consequat fugiat ullamco officia consectetur nostrud dolore reprehenderit elit.',
              textAlign: TextAlign.justify,
            )

          )
        
        ],
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 20 ),
      child: Row(
        children: [

          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Network City', style: TextStyle( fontWeight: FontWeight.bold ),),
              Text('The Grid, TRON Legacy', style: TextStyle( color: Colors.black45 ),),
            ],
          ),

          Expanded(child: Container()),

          const Icon( Icons.star, color: Colors.lightBlue, ),
          const Text('21')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 50, vertical: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          CustomButton( icon: Icons.wifi_calling_sharp, text: 'CALL',),
          CustomButton(icon: Icons.route_sharp, text: 'ROUTE',),
          CustomButton(icon: Icons.share_sharp, text: 'SHARE',),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( icon, color: Colors.lightBlueAccent, size: 30,),
        Text( text, style: const TextStyle( color: Colors.lightBlueAccent, fontWeight: FontWeight.bold ),)
      ],
    );
  }
}


