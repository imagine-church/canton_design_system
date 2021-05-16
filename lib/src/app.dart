import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CantonApp extends StatelessWidget {
  final String title;
  final Widget home;
  final Color primaryColor;

  const CantonApp({this.title, this.home, this.primaryColor});
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final repo = watch(themeProvider);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: repo.themeMode,
        theme: cantonLightTheme().copyWith(primaryColor: primaryColor),
        darkTheme: cantonDarkTheme().copyWith(primaryColor: primaryColor),
        home: home,
      );
    });
  }
}
