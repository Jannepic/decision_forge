import 'dart:io';

import 'package:decision_forge/core/app/app_startup_page.dart';
import 'package:decision_forge/core/config/app_config.dart';
import 'package:decision_forge/l10n/app_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Supabase.initialize(
    url: AppConfig.supabaseUrl,

    anonKey: AppConfig.supabaseAnonKey,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String defaultLocale = '';
    if (!kIsWeb) {
      String defaultLocale = Platform.localeName;
      if (defaultLocale != '') {
        defaultLocale = defaultLocale.substring(0, 2);
        if ((defaultLocale == 'de') || (defaultLocale == 'en')) {
          ///TODO: Hier vielleicht noch was machen
        } else {
          defaultLocale = 'en';
        }
      }
    }
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(defaultLocale != '' ? defaultLocale : 'en'),
      home: AppStartupPage(),
    );
  }
}
