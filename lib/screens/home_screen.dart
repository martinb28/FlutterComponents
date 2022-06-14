import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(menuOptions[i].icon, color: Colors.indigo),
          title: Text(menuOptions[i].name),
          onTap: () {

            Navigator.pushNamed(context, menuOptions[i].route);

          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOptions.length
        )
    );
  }
}