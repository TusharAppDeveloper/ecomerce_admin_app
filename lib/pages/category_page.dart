import 'package:ecomerce_admin_app/providers/product_provider.dart';
import 'package:ecomerce_admin_app/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName = '/category';

  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSingleInputDialog(
            context: context,
            hint: 'Enter category name',
            title: 'New category',
            onSave: (value){
              EasyLoading.show(status: 'Please wait');
                context.read<ProductProvider>().addCategory(value).then((value) {
                  EasyLoading.dismiss();
                  showMsg(context, 'Category added');
                });

            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) => provider.categoryList.isEmpty
            ? const Center(
                child: Text('No category found'),
              )
            : ListView.builder(
                itemCount: provider.categoryList.length,
                itemBuilder: (context, index) {
                  final category = provider.categoryList[index];

                  return ListTile(
                    title: Text(category.name),
                  );
                },
              ),
      ),
    );
  }
}
