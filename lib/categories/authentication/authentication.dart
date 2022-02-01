import 'package:flutter/material.dart';

import 'login_button_apple.dart';
import 'login_button_google.dart';
import 'register_form.dart';
import 'login_form.dart';
import 'package:flui_components/widgets/templates_list.dart';

class AuthenticationTemplatesView extends StatelessWidget {
  const AuthenticationTemplatesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TemplatesList(
      title: "Auth Templates (click to expand)",
      children: [
        LoginButtonGoogleComponent(),
        LoginButtonAppleComponent(),
        LoginFormComponent(),
        RegisterFormComponent(),
      ],
    );
  }
}
