import 'categories/authentication/authentication.dart';
import 'package:flui_components/home_view.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        "/": (context) => const HomeView(),
        "/cat/auth": (context) => const AuthenticationTemplatesView(),
      },
    );
  }
}
