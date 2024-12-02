import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import 'gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Assets Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      /*localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],*/
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            Assets.images.logo.image(width: 150, height: 150),
            const SizedBox(height: 10),
            Assets.images.profileJpg.image(width: 150, height: 150),
            const SizedBox(height: 10),
            Assets.images.chip1.image(width: 150, height: 150),
            const Divider(),

            const Text(
              'Localization Text:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(AppLocalizations.of(context)!.helloWorld),
            const Divider(),

            const Text(
              'Icons:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SvgPicture.asset(
              Assets.images.icons.dartTest, // Load SVG using FlutterGen
              width: 100,
              height: 100,
            ),
            const Divider(),

            const Text(
              'JSON Data:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            FutureBuilder<String>(
              future: rootBundle.loadString(Assets.json.map),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return const Text('Error loading JSON');
                }
                return Text(snapshot.data ?? 'No data found');
              },
            ),
            const Divider(),

            const Text(
              'Lottie Animation:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Lottie.asset(Assets.lottie.geometricalAnimation),
          ],
        ),
      ),
    );
  }
}
