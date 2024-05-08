import 'package:ecomerce_admin_app/pages/category_page.dart';
import 'package:ecomerce_admin_app/pages/new_product_page.dart';
import 'package:ecomerce_admin_app/pages/view_product_page.dart';
import 'package:flutter/material.dart';

class DashboardItem {
  String title;
  String route;
  IconData iconData;

  DashboardItem({
    required this.title,
    required this.route,
    required this.iconData,
  });
}

final dashboardItemList = <DashboardItem>[
  DashboardItem(title: 'Add Product', route: NewProductPage.routeName, iconData: Icons.add),
  DashboardItem(title: 'View Product', route: ViewProductPage.routeName, iconData: Icons.photo),
  DashboardItem(title: 'Category', route: CategoryPage.routeName, iconData: Icons.category),
];
