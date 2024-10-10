import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: Theme.of(context).colorScheme.surface,
      childWidget: SizedBox(
        height: 200,
        width: 200,
        child: Image.asset("assets/calendar512p.png"),
      ),
      asyncNavigationCallback: () async {
        await Future.delayed(const Duration(seconds: 3));
        if (context.mounted) {
          context.replace('/');
          // GoRouter.of(context).goNamed("home");
          // context.goNamed('home');
        }
      },
    );
  }
}
