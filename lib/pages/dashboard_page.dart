import 'package:ecomerce_admin_app/auth/auth_service.dart';
import 'package:ecomerce_admin_app/custom_widgets/dashboard_item_view.dart';
import 'package:ecomerce_admin_app/models/dashboard_item.dart';
import 'package:ecomerce_admin_app/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'launcher_page.dart';

class DashboardPage extends StatelessWidget {
  static const String routeName = '/dashboard';

  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<ProductProvider>(context,listen: false).getAllCategories();
    Provider.of<ProductProvider>(context,listen: false).getAllProducts();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          actions: [
            IconButton(
              onPressed: () {
                AuthService.logout().then((value) =>
                    Navigator.pushReplacementNamed(
                        context, LauncherPage.routeName));
              },
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemCount: dashboardItemList.length,
          itemBuilder: (context, index) {
            final item = dashboardItemList[index];
            return DashboardItemView(item: item);
          },
        ));
  }
}
