import 'package:flutter/material.dart';
import 'package:news_app_api/src/core/constants/extensions/theme_extensions.dart';
import 'package:news_app_api/src/core/constants/strings.dart';
import 'package:news_app_api/src/core/router/router.dart';
import 'package:news_app_api/src/features/news/view/screens/news_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _next();
    super.initState();
  }

  void _next() {
    Future.delayed(
      const Duration(seconds: 3),
      () => AppNavigator.pushReplacement(context, const NewsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.appName,
              style: context.textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
            const Text(
              "loading",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
