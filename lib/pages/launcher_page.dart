import 'package:ecomerce_admin_app/auth/auth_service.dart';
import 'package:ecomerce_admin_app/pages/dashboard_page.dart';
import 'package:ecomerce_admin_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class LauncherPage extends StatefulWidget {
  static const String routeName = '/';
  const LauncherPage({super.key});

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 0),(){
      if(AuthService.currentUser != null){
        Navigator.pushReplacementNamed(context, DashboardPage.routeName);
      }else{
        Navigator.pushReplacementNamed(context, LoginPage.routeName);

      }
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(child: CircularProgressIndicator()),
    );
  }
}
