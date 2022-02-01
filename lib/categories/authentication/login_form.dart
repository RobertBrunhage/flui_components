import 'package:flui_components/widgets/component_preview.dart';
import 'package:flutter/material.dart';

class LoginFormComponent extends StatelessWidget {
  const LoginFormComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentPreview(
      title: "Login Form",
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.account_circle),
              hintText: "Username",
              labelText: "Username",
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.password),
              hintText: "Password",
              labelText: "Password",
            ),
            obscureText: true,
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text("Forgot Password ?"),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
          ),
        ],
      ),
      code: """Column(
    children: [
      const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.account_circle),
          hintText: "Username",
          labelText: "Username",
        ),
      ),
      const SizedBox(height: 20),
      const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.password),
          hintText: "Password",
          labelText: "Password",
        ),
        obscureText: true,
      ),
      const SizedBox(height: 20),
      SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Login"),
        ),
      ),
    ],
  )""",
    );
  }
}
