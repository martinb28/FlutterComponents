import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget de Tarjeta'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name: 'Un lugar donde me gustaria estar', imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://media-exp1.licdn.com/dms/image/C4D1BAQFsdjpzrtQWUA/company-background_10000/0/1519796755846?e=2147483647&v=beta&t=tA2WEp7x9015ge1Px-zpkFFUueL-uskh1SlXHTBCXrM',),

        ],
      )
    );
  }
}