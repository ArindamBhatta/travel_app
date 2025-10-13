import 'package:flutter/material.dart';
import 'package:travel_app/core/theme/dimensions.dart';
import 'package:travel_app/features/on_boarding_screen/Interface/introduction_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _mainImageController;
  late AnimationController _subImageController;
  late AnimationController _backgroundController;

  late Animation<double> _mainImageAnimation;
  late Animation<double> _subImageAnimation;
  late Animation<double> _backgroundAnimation;

  @override
  void initState() {
    super.initState();

    _mainImageController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    );

    _subImageController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _backgroundController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _mainImageAnimation = CurvedAnimation(
      parent: _mainImageController,
      curve: Curves.easeIn,
    );

    _subImageAnimation = CurvedAnimation(
      parent: _subImageController,
      curve: Curves.easeIn,
    );

    _backgroundAnimation = CurvedAnimation(
      parent: _backgroundController,
      curve: Curves.easeIn,
    );

    _mainImageController.forward();

    _mainImageController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _subImageController.forward();
      }
    });

    _subImageController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(seconds: 1), () {
          if (mounted) _backgroundController.forward();
        });
      }
    });
  }

  @override
  void dispose() {
    _mainImageController.dispose();
    _subImageController.dispose();
    _backgroundController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final logoSize = size.width * 0.3;
          const maxLogoSize = 180.0;
          const minLogoSize = 90.0;
          final actualLogoSize = logoSize.clamp(minLogoSize, maxLogoSize);

          return Stack(
            children: [
              // Background image that fades in last
              // FadeTransition(
              //   opacity: _backgroundAnimation,
              //   child: Container(
              //     width: double.infinity,
              //     height: double.infinity,
              //     decoration: const BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage(
              //           'assets/images/splash_background.png',
              //         ),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              // ),
              // Centered logo and text
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FadeTransition(
                      opacity: _mainImageAnimation,
                      child: Image.asset(
                        'assets/icons/logo.png',
                        width: actualLogoSize,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: Dimensions.spacingM),
                    FadeTransition(
                      opacity: _subImageAnimation,
                      child: Image.asset(
                        'assets/icons/wanderly.png',
                        width: actualLogoSize,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              // Bottom content
              Align(
                alignment: Alignment.bottomCenter,
                child: SafeArea(
                  minimum: EdgeInsets.symmetric(
                    horizontal: size.width * 0.08,
                    vertical: size.height * 0.02,
                  ),
                  child: FadeTransition(
                    opacity: _backgroundAnimation,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Welcome to Wanderly",
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall?.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * 0.05,
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => const OnBoardingScreen(),
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.02,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: size.width * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
