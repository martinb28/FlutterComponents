import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  
  final options = const ['Zelda', 'Super Smash Bros', 'Final Fantasy X', 'Persona'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView')
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
          onTap: (){
            final game = options[i];
            print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        )
    );
  }
}
