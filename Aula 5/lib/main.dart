import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula1/repositories/exercicio8.dart';
import 'package:flutter_avancado_aula1/screens/animacao_screen.dart';
import 'package:flutter_avancado_aula1/screens/animated_builder_screen.dart';
import 'package:flutter_avancado_aula1/screens/animated_container_screen.dart';
import 'package:flutter_avancado_aula1/screens/animated_cross_screen.dart';
import 'package:flutter_avancado_aula1/screens/animated_list_example.dart';
import 'package:flutter_avancado_aula1/screens/animated_switcher_screen.dart';
import 'package:flutter_avancado_aula1/screens/animated_widget_example.dart';
import 'package:flutter_avancado_aula1/screens/aspect_ratio_example.dart';
import 'package:flutter_avancado_aula1/screens/curved_animation_screen.dart';
import 'package:flutter_avancado_aula1/screens/custom_multi_child_layout_screen.dart';
import 'package:flutter_avancado_aula1/screens/custom_paint_screen.dart';
import 'package:flutter_avancado_aula1/screens/custom_single_child_screen.dart';
import 'package:flutter_avancado_aula1/screens/decorated_box_screen.dart';
import 'package:flutter_avancado_aula1/screens/dismissible_example.dart';
import 'package:flutter_avancado_aula1/screens/exercicio1.dart';
import 'package:flutter_avancado_aula1/screens/exercicio10.dart';
import 'package:flutter_avancado_aula1/screens/exercicio11.dart';
import 'package:flutter_avancado_aula1/screens/exercicio12.dart';
import 'package:flutter_avancado_aula1/screens/exercicio13.dart';
import 'package:flutter_avancado_aula1/screens/exercicio2.dart';
import 'package:flutter_avancado_aula1/screens/exercicio4.dart';
import 'package:flutter_avancado_aula1/screens/exercicio6.dart';
import 'package:flutter_avancado_aula1/screens/exercicio7.dart';
import 'package:flutter_avancado_aula1/screens/exercicio9.dart';
import 'package:flutter_avancado_aula1/screens/fittedbox_example..dart';
import 'package:flutter_avancado_aula1/screens/fracsizedbox_screen.dart';
import 'package:flutter_avancado_aula1/screens/home_screen.dart';
import 'package:flutter_avancado_aula1/screens/layout_builder_example.dart';
import 'package:flutter_avancado_aula1/screens/login_screen.dart';
import 'package:flutter_avancado_aula1/screens/media_query_example.dart';
import 'package:flutter_avancado_aula1/screens/orientation_builder_example.dart';
import 'package:flutter_avancado_aula1/screens/sliver_screen.dart';
import 'package:flutter_avancado_aula1/screens/test_counter_screen.dart';
import 'package:flutter_avancado_aula1/screens/test_login_screen.dart';
import 'package:flutter_avancado_aula1/screens/test_showm_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/exercicio/16",
      routes: {
        "/": (context) => HomeScreen(),
        "/exemplo/aspectRatio": (context) => AspectRatioExample(),
        "/exemplo/fittedBox": (context) => FittedBoxExample(),
        "/exemplo/fracSizedBox": (context) => FracSizedBox(),
        "/exemplo/layoutBuilder": (context) => LayoutBuilderExample(),
        "/exemplo/mediaQuery": (context) => MediaQueryExample(),
        "/exemplo/orientationBuilder": (context) => OrientationBuilderExample(),
        "/exemplo/customSingleChild": (context) => CustomSingleChildScreen(),
        "/exemplo/customMultiChildLayout": (context) =>
            CustomMultiChildLayoutScreen(),
        "/exemplo/customPaint": (context) => CustomPaintScreen(),
        "/exemplo/slivers": (context) => SliverScreen(),
        "/exemplo/animacoes/1": (context) => AnimacaoScreen(),
        "/exemplo/animatedWidget": (context) => AnimatedWidgetExample(),
        "/exemplo/animatedBuilder": (context) => AnimatedBuilderScreen(),
        "/exemplo/curved": (context) => CurvedAnimationScreen(),
        "/exemplo/animatedContainer": (context) => AnimatedContainerScreen(),
        "/exemplo/animatedCrossFade": (context) => AniamtedCrossScreen(),
        "/exemplo/decoratedBox": (context) => DecoratedBoxScreen(),
        "/exemplo/animatedSwitcher": (context) => AnimatedSwitcherScreen(),
        "/exemplo/animatedList": (context) => AnimatedListExample(),
        "/exemplo/dismissible": (context) => DismissibleExample(),
        "/exemplo/tests/counter": (context) => TestCounterScreen(),
        "/exemplo/tests/login": (context) => TestLoginScreen(),
        "/exemplo/tests/show_milhao": (context) => TestShowMScreen(),

        "/exercicio/1": (context) => Exercicio1(),
        "/exercicio/2": (context) => Exercicio2(),
        "/exercicio/4": (context) => Exercicio4(),
        "/exercicio/6": (context) => Exercicio6(),
        "/exercicio/7": (context) => Exercicio7(),
        "/exercicio/8": (context) => Exercicio8(),
        "/exercicio/9": (context) => Exercicio9(),
        "/exercicio/10": (context) => Exercicio10(),
        "/exercicio/11": (context) => Exercicio11(),
        "/exercicio/12": (context) => Exercicio12(),
        "/exercicio/13": (context) => Exercicio13(),
        "/exercicio/16": (context) => LoginScreen(),
      },
    );
  }
}
