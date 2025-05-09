import 'package:flutter/material.dart';
import 'package:remindeasy/core/theme/app_theme.dart';
import 'package:remindeasy/core/theme/app_colors.dart';
import 'package:lottie/lottie.dart';
import 'package:remindeasy/presentation/pages/onboarding_page2.dart';

class OnboardingPage1 extends StatefulWidget {
  static route()=>MaterialPageRoute(builder: (context)=>const OnboardingPage1(),);
  const OnboardingPage1({super.key});

  @override
  State<OnboardingPage1> createState() => _OnboardingPage1State();
}

class _OnboardingPage1State extends State<OnboardingPage1> {
  Color _buttonColor = Colors.transparent; // Default button color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
            ),
            Lottie.asset(
              'assets/animations/Animation - 1734713545932.json',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 50, left: 40, right: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 50.0),
                  Text(
                    'Forget About Forgetting!',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(43, 44, 31, 1),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your personal reminder assistant,\n'
                        ' always by your side.',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _buttonColor = AppColors.backgroundButton;
                        });

                        // Reset color after a delay
                        Future.delayed(Duration(milliseconds: 50), () {
                          setState(() {
                            _buttonColor = Colors.transparent; // Revert to original color
                          });
                        });

                        Navigator.push(context, OnboardingPage2.route());
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: _buttonColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Next >>',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(43, 44, 31, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
