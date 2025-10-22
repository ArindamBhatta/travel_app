import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/core/theme/app_theme.dart';
import 'package:travel_app/core/utils/logger.dart';
import 'package:travel_app/features/splash_screen/splash_screen.dart';
import 'package:travel_app/firebase_options.dart';

class AppRoute {
  static const splash = '/splash';
  static const onBoarding = '/on-boarding';
  static const login = '/login';
}

final routerProvider = Provider<GoRouter>(create: (ref) {
  return GoRouter(
    initialLocation: AppRoute.splash,
    debugLogDiagnostics: true,
    routes: [
      // Define routes using AppRoute constants
      GoRoute(
        path: AppRoute.splash,
        name: AppRoute.splash,
        builder: (context, state) => const Placeholder(),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final String currentPath = state.matchedLocation;
      AppLogger.logger.d("Redirect check: Current location = $currentPath");
      return null;
    },
    // refreshListenable: GoRouterRefreshStream(
    //   ref.watch(authStateChangesProvider.stream),
    // ),
  );
});

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFunctions.instance.useFunctionsEmulator('localhost', 5001);
  FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme.copyWith(
        textTheme:
            GoogleFonts.poppinsTextTheme(), // Optional custom font override
      ),
      darkTheme: AppTheme.darkTheme.copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SplashScreen(),
    );
  }
}
