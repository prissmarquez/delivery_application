import 'package:deliver/auth/login_or_register.dart';
import 'package:deliver/models/iceCreams.dart';
import 'package:deliver/models/store.dart';
import 'package:deliver/pages/registerPage.dart';
import 'package:deliver/themes/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/loginPage.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => Themeprovider()),

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
      home: const LoginOrRegister(),
      theme: Provider.of<Themeprovider>(context).themeData
    );
  }
}
