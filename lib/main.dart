import 'package:deliver/services/auth/authGate.dart';

import 'package:deliver/firebase_options.dart';
import 'package:deliver/models/store.dart';
import 'package:deliver/themes/themeProvider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);

  runApp(
    //these provider
    MultiProvider(providers: [
      //theme provider
      ChangeNotifierProvider(create: (context) => Themeprovider()),

      //store
      ChangeNotifierProvider(create: (context) => Store()),

    ],
    child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authgate(),
      theme: Provider.of<Themeprovider>(context).themeData
    );
  }
}
