import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Set the default locale
  Locale _locale = const Locale('en');

  // Function to change the locale
  void _changeLocale() {
    setState(() {
      if (_locale.languageCode == 'en') {
        _locale = const Locale('ne'); // Switch to Nepali
      } else {
        _locale = const Locale('en'); // Switch back to English
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Assets Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale, // Pass the selected locale here
      home: HomePage(onLocaleChange: _changeLocale),
    );
  }
}

class HomePage extends StatelessWidget {
  final VoidCallback onLocaleChange;

  const HomePage({super.key, required this.onLocaleChange});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Assets Demo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Images:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Using AssetGenImage
            Assets.images.imgDog.image(width: 150, height: 150),
            const SizedBox(height: 10),
            Assets.images.imgPerson.image(width: 150, height: 150),
            const SizedBox(height: 10),
            const Divider(),

            const Text(
              'Localization Text:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(loc.greetingMessage('John')),
            const SizedBox(height: 20),
            Text(loc.welcomeMessage),
            const SizedBox(height: 20),
            Text(loc.loadingMessage),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //_showLogoutConfirmationDialog(context, loc);
              },
              child: Text(loc.logoutConfirmation),
            ),
            const Divider(),

            const Text(
              'Icons:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SvgPicture.asset(
              Assets.images.svgTarget, // Load SVG using FlutterGen
              width: 100,
              height: 100,
            ),
            const Divider(),

            const Text(
              'JSON Data:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Divider(),

            const Text(
              'Lottie Animation:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Lottie.asset(Assets.lottie.geometricalAnimation),

            // Button to change the locale
            ElevatedButton(
              onPressed: onLocaleChange,
              child: Text(loc.languageSelection),
            ),
          ],
        ),
      ),
    );
  }
}
