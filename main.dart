import 'package:flutter/material.dart';
import 'package:flutter_application_1/feed.dart';
import 'package:flutter_application_1/newletter_checkbox_provider.dart';
import 'package:flutter_application_1/password_visiable_provider.dart';
import 'package:provider/provider.dart';
import 'signup.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PasswordVisibilityProvider()),
        ChangeNotifierProvider(create: (_) => NewsletterCheckboxProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: SignupPage(),
        home: FeedPage(),
      ),
    ),
  );
}
