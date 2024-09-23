import 'package:easy_localization/easy_localization.dart';
import 'package:easy_test/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});
     // This widget is the root of your application.    ""
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Colors.green,
      body: Placeholder(


        child: Text(LocaleKeys.welcome.tr()),
      ),
    );
  }
}
