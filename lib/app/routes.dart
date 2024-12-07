import 'package:flutter/material.dart';
import 'package:kasir_super/features/home/home.dart';
import '../core/core.dart';

Route<dynamic> routes(settings) {
          switch (settings.name) {
            case MainPage.routeName:
              return MaterialPageRoute(builder: (context) {
                return const MainPage();
              });
            default:
            return MaterialPageRoute(builder: (context) {
              return const Scaffold(
                body: Center(child: RegularText('Page Not Found!', textAlign: TextAlign.center,)),
              );
            });
          }
        }