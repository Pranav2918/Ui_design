import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_5/screens/lesson/view1.dart';
import 'package:task_5/screens/lesson/view2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: LayoutBuilder(
        builder: (context, constraints) {
          if (screenSize.height < 780) {
            return View1();
          } else {
            return View2();
          }
        },
      )),
    );
  }
}
