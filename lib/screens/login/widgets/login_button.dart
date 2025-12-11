import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String imageBtn;
  final Widget navigation;

  const LoginButton({
    required this.imageBtn,
    required this.navigation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            // Navegação provisória
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => navigation,
              ),
            );
          },
          child: Image.asset(
            imageBtn,
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
