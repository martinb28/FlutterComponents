
import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';


class AppRoutes{
  
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    //TODO: borrar home
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp),
    MenuOption(route: 'listview1', name: 'List View', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for(final option in menuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  static Route<dynamic> onGenerateRoute(RouteSettings settings){          
          return MaterialPageRoute(
            builder: (context) => const AlertScreen(),
            );
  }
}