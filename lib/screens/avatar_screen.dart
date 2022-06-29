import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('MB'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage('https://www.lavanguardia.com/uploads/2021/12/10/61b303e16ba4b.jpeg'),
         ),
      ),
    );
  }
}