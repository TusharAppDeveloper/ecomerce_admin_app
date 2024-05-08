import 'package:ecomerce_admin_app/models/dashboard_item.dart';
import 'package:flutter/material.dart';

class DashboardItemView extends StatelessWidget {
  const DashboardItemView({super.key,required this.item});

  final DashboardItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.pushNamed(context, item.route),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item.iconData,size: 40,color: Colors.grey,),
            const SizedBox(height: 10,),
            Text(item.title,style: Theme.of(context).textTheme.titleLarge,)
          ],
        ),
      ),
    );
  }
}
