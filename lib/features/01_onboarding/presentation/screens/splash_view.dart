import 'package:flutter/material.dart';


class Splash extends StatefulWidget
{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>
{
  @override
  void initState()
  {
    //Future.delayed(const Duration(seconds: 2), () => AppRouter.router.pushReplacement(AppRoutes.),);
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      body: Column(),
    );
  }
}