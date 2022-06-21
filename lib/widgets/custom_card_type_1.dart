import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Titulo de ejemplo'),
            subtitle: Text('Se agrega un subtitle'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {},
                 child: const Text('Cancelar')
                 ),
                TextButton(onPressed: () {},
                 child: const Text('Ok')
                 ),
                
              ],
            ),
          )
      ],
      )
    );
  }
}