import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';


class AppRoutes{
  
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    //TODO: borrar home
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp),
    MenuOption(route: 'listview1', name: 'Vista de listas', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Avatar Circular', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animaciones', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_outlined),
    MenuOption(route: 'inputs', name: 'Pantalla de Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slider', name: 'Sliders and checks', screen: const SliderScreen(), icon: Icons.slideshow_rounded),
    MenuOption(route: 'listviewbuilder', name: 'Infinite Scroll & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' : (BuildContext context) => const HomeScreen()});

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