import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {

  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5,0.5],
      colors: [
        Color(0xff5EE8C5),
        Color(0xff30BAD6),
      ],
      ),
  );

  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),

          ]
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background
        _Background(),

        const MainContent(),

      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 55, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox( height: 30,),
          const Text('11°', style: textStyle,),
          const Text('Miércoles', style: textStyle,),
          Expanded(child: Container()),
          
          const Icon( Icons.arrow_drop_down, size: 100, color: Colors.white,),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {}, 
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 30,),
            child: Text('Bienvenido', style: TextStyle( color: Colors.white, fontSize: 20),),
          ),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
          ),
        ),
      ),
    );
  }
}



