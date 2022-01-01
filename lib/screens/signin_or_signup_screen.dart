import 'package:peachai/constants.dart';
import 'package:flutter/material.dart';
import 'package:peachai/widgets/main_button.dart';
import 'home_screen.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Hero(
                tag: "logo",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? "assets/images/logo_rectangular.jpeg"
                        : "assets/images/logo_rectangular.jpeg",
                    height: 200,
                  ),
                ),
              ),
              const Spacer(),
              MainButton(
                text: "Sign In",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              MainButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {},
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
