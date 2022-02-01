import 'package:flui_components/widgets/component_preview.dart';
import 'package:flutter/material.dart';

class LoginButtonAppleComponent extends StatelessWidget {
  const LoginButtonAppleComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentPreview(
      title: "Apple Login Button",
      child: SizedBox(
        height: 45,
        child: OutlinedButton.icon(
          onPressed: () {},
          label: const Text("Sign in with Apple"),
          icon: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: Image.network(
              "https://www.transparentpng.com/thumb/apple-logo/d9RxbG-apple-logo-free-png.png",
              width: 20,
              height: 20,
            ),
          ),
        ),
      ),
      code: """SizedBox(
    height: 45,
    child: OutlinedButton.icon(
      onPressed: () {},
      label: const Text("Sign in with Apple"),
      icon: CircleAvatar(
        radius: 15,
        backgroundColor: Colors.white,
        child: Image.network(
          "https://www.transparentpng.com/thumb/apple-logo/d9RxbG-apple-logo-free-png.png",
          width: 20,
          height: 20,
        ),
      ),
    ),
  )""",
    );
  }
}
