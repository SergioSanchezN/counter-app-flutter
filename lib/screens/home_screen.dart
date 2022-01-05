import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  int counter = 0;

  @override
  Widget build(BuildContext context) {

    const fontsize30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 5.0,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [ 
            const Text('Clicks counter', style: fontsize30),
            Text('$counter', style: fontsize30)
            ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: const CustomFloatingActions(),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        FloatingActionButton(
          child: const Icon(Icons.add),
          elevation: 5, 
          onPressed: null,
        ),
      
        FloatingActionButton(
          child: const Icon(Icons.add),
          elevation: 5, 
          onPressed: null,
        ),

        FloatingActionButton(
          child: const Icon(Icons.add),
          elevation: 5, 
          onPressed: null,
        ),
      ],
    );
  }
}