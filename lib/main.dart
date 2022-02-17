import 'package:code_management/bindings/all_binding.dart';
import 'package:code_management/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllBinding(),
      //   return ResponsiveWrapper.builder(
      //       BouncingScrollWrapper.builder(context, widget!),
      //       maxWidth: 1200,
      //       minWidth: 450,
      //       defaultScale: true,
      //       breakpoints: [
      //         const ResponsiveBreakpoint.resize(450, name: MOBILE),
      //         const ResponsiveBreakpoint.autoScale(700, name: TABLET),
      //       ],
      //       background: Container(color: const Color(0xFFF5F5F5)));
      // },
      title: "coding test 1",
      getPages: appPages,
      initialRoute: Routes.initialRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
    );
  }
}
