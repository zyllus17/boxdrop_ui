import 'package:dribbox_ui/screens/home_screen.dart';
import 'package:dribbox_ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        theme: AppTheme.appTheme,
        home: HomeScreen(),
      ),
    );
  }
}
