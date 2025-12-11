import 'package:amayume/screens/home/home.dart';
import 'package:amayume/screens/login/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 4 / 3, // proporção da img
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    "assets/login/anime-grid.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          const Color.fromARGB(255, 18, 20, 28),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 64),
            Image.asset(
              "assets/logo.png",
              height: 70,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            Text(
              "AMAYUME",
              style: GoogleFonts.inter(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 64),
            Text(
              "Welcome!",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 240,
              child: Text(
                "Sign in with your Google account to get started",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 2,
                  color: Colors.white10,
                ),
                const SizedBox(width: 16),
                Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(width: 16),
                Container(
                  width: 100,
                  height: 2,
                  color: Colors.white10,
                )
              ],
            ),
            const SizedBox(height: 32),
            const LoginButton(
              imageBtn: "assets/login/google-icon.png",
              navigation: Home(),
            ),
          ],
        ),
      ),
    );
  }
}
