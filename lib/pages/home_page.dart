import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/akses.dart';
import 'package:flutter_application_1/components/goclub.dart';
import 'package:flutter_application_1/components/gopay.dart';
import 'package:flutter_application_1/components/header.dart';
import 'package:flutter_application_1/components/news.dart';
import 'package:flutter_application_1/components/menus.dart';
import 'package:flutter_application_1/components/search.dart';
import 'package:flutter_application_1/models/news.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: green2,
          elevation: 0,
          toolbarHeight: 71,
          title: const Header()),
      body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Search(), Gopay(), Menus(), Goclub(), Akses(), Baru(),
              ],
              )
              )
              );
  }
}
