import 'package:flui_components/widgets/component_preview.dart';
import 'package:flutter/material.dart';

class LoginButtonGoogleComponent extends StatelessWidget {
  const LoginButtonGoogleComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentPreview(
      title: "Google Login Button",
      child: SizedBox(
        height: 45,
        child: OutlinedButton.icon(
          onPressed: () {},
          label: const Text("Sign in with Google"),
          icon: Image.network(
            "https://www.transparentpng.com/download/google-logo/google-logo-png-icon-free-download-SUF63j.png",
            height: 30,
          ),
        ),
      ),
      code: """SizedBox(
    height: 45,
    child: OutlinedButton.icon(
      onPressed: () {},
      label: const Text("Sign in with Google"),
      icon: Image.network(
        "https://www.transparentpng.com/download/google-logo/google-logo-png-icon-free-download-SUF63j.png",
        height: 30,
      ),
    ),
  )""",
    );
  }
}
