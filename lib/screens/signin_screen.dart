import 'package:anime_verse/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
        body: Center(
          child: Text(
              "Hello World",
              style: TextStyle(color: Colors.white),
          ),
        )
    );
  }
}
