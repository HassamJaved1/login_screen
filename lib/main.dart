import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen/input.dart';

void main(List<String> args) {
  runApp(const LoginScreen());
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Screen(),
      ),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        //First Image
        SvgPicture.asset(
          'assets/login.svg',
          width: screenSize.width,
          fit: BoxFit.fill,
        ),
        Positioned(
          top: 30,
          left: 15,
          child: SvgPicture.asset(
            'assets/Plants.svg',
            width: screenSize.width * 0.9,
          ),
        ),
        Positioned(
          left: 50,
          top: 120,
          child: SvgPicture.asset(
            'assets/standing-23.svg',
            width: screenSize.width * 0.3,
          ),
        ),
        Positioned(
          top: 120,
          left: 130,
          child: Center(
            child: SvgPicture.asset(
              'assets/standing-14.svg',
              width: 0.2 * screenSize.width,
            ),
          ),
        ),
        Positioned(
          right: 100,
          top: 160,
          child: SvgPicture.asset(
            'assets/sitting-4.svg',
            width: 0.3 * screenSize.width,
          ),
        ),

        Center(
          child: Column(
            children: [
              Input(
                icon: const Icon(Icons.email_rounded),
                text: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              Input(
                icon: const Icon(Icons.lock_rounded),
                text: 'Password',
              )
            ],
          ),
        )
      ],
    );
  }
}
