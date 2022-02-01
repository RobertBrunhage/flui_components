import 'package:flui_components/widgets/component_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterFormComponent extends StatelessWidget {
  const RegisterFormComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentPreview(
      title: "Register Form",
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "First Name",
                    labelText: "First Name",
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Last Name",
                    labelText: "Last Name",
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.account_circle),
              hintText: "Username",
              labelText: "Username",
            ),
            keyboardType: TextInputType.name,
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.alternate_email),
              hintText: "E-Mail",
              labelText: "E-Mail",
            ),
            keyboardType: TextInputType.emailAddress,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("Already a user ?"),
              TextButton(
                onPressed: () {},
                child: const Text("Login"),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Register"),
            ),
          ),
        ],
      ),
      code: """Column(
    children: [
      Row(
        children: const [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "First Name",
                labelText: "First Name",
              ),
              keyboardType: TextInputType.name,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Last Name",
                labelText: "Last Name",
              ),
              keyboardType: TextInputType.name,
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.account_circle),
          hintText: "Username",
          labelText: "Username",
        ),
        keyboardType: TextInputType.name,
      ),
      const SizedBox(height: 20),
      const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.alternate_email),
          hintText: "E-Mail",
          labelText: "E-Mail",
        ),
        keyboardType: TextInputType.emailAddress,
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
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text("Already a user ?"),
          TextButton(
            onPressed: () {},
            child: const Text("Login"),
          ),
        ],
      ),
      const SizedBox(height: 10),
      SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Register"),
        ),
      ),
    ],
  )""",
    );
  }
}
