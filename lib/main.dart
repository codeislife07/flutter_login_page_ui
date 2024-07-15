import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/view/login/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Intel",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle:
                const WidgetStatePropertyAll(TextStyle(fontFamily: "Poppins")),
            elevation: const WidgetStatePropertyAll(
              0,
            ),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Colors.red,
                ))),
            backgroundColor: WidgetStatePropertyAll(
              Colors.red[100],
            ),
            foregroundColor: const WidgetStatePropertyAll(
              Colors.red,
            ),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          errorStyle: TextStyle(height: 0),
          border: defaultInputBorder,
          enabledBorder: defaultInputBorder,
          focusedBorder: defaultInputBorder,
          errorBorder: defaultInputBorder,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

const defaultInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(
    color: Color(0xFFDEE3F2),
    width: 1,
  ),
);
