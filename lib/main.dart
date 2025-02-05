import 'package:deliver/themes/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/loginPage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Themeprovider(),
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
      home: Loginpage(),
      theme: Provider.of<Themeprovider>(context).themeData
    );
  }
}
