import 'dart:io';

import 'package:ecomerce_admin_app/models/category_model.dart';
import 'package:ecomerce_admin_app/models/product_model.dart';
import 'package:ecomerce_admin_app/providers/product_provider.dart';
import 'package:ecomerce_admin_app/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class NewProductPage extends StatefulWidget {
  static const String routeName = '/newProduct';

  const NewProductPage({super.key});

  @override
  State<NewProductPage> createState() => _NewProductPageState();
}

class _NewProductPageState extends State<NewProductPage> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final stockController = TextEditingController();
  String? localImagePath;
  CategoryModel? categoryModel;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New product'),
        actions: [
          IconButton(
            onPressed: _saveProduct,

            icon: const Icon(Icons.done),
          )
        ],
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            _imageSection(),
            _categorySection(),
            _textFormFieldSection()
          ],
        ),
      ),
    );
  }

  Widget _imageSection() {
    return Card(
      child: Column(
        children: [
          localImagePath == null
              ? const Icon(
                  Icons.person,
                  size: 150,
                )
              : Image.file(
                  File(localImagePath!),
                  width: 150,
                  height: 150,
                ),
          const Text('pick product image'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  _getImage(ImageSource.camera);
                },
                icon: const Icon(Icons.camera_alt),
                label: const Text('camera'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  _getImage(ImageSource.gallery);
                },
                icon: const Icon(Icons.photo),
                label: const Text('gallery'),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    stockController.dispose();
    super.dispose();
  }

  Widget _categorySection() {
    return Card(
      child: Consumer<ProductProvider>(
        builder: (context, provider, child) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: DropdownButtonFormField<CategoryModel>(
            decoration: const InputDecoration(border: InputBorder.none),
            value: categoryModel,
            hint: const Text('Select a category'),
            items: provider.categoryList
                .map((category) => DropdownMenuItem<CategoryModel>(
                    value: category, child: Text(category.name)))
                .toList(),
            onChanged: (value) {
              setState(() {
                categoryModel = value;
              });
            },
              validator: (value) {
                if (value == null ) {
                  return 'Please select a category ';
                }
                return null;
              }
          ),
        ),
      ),
    );
  }

  Widget _textFormFieldSection() {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: nameController,
              decoration: const InputDecoration(
                  labelText: 'Product name', border: OutlineInputBorder()),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field must not be empty';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: descriptionController,
              decoration: const InputDecoration(
                  labelText: 'Product description',
                  border: OutlineInputBorder()),
              validator: (value) {

                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: priceController,
              decoration: const InputDecoration(
                  labelText: 'Product price', border: OutlineInputBorder()),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field must not be empty';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: stockController,
              decoration: const InputDecoration(
                  labelText: 'Stock', border: OutlineInputBorder()),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field must not be empty';
                }
                return null;
              },
            ),
          )
        ],
      ),
    );
  }

  void _getImage(ImageSource source) async {
    final xFile =
        await ImagePicker().pickImage(source: source, imageQuality: 60);
    if (xFile != null) {
      setState(() {
        localImagePath = xFile.path;
      });
    }
  }

  void  _saveProduct() async {
    if (localImagePath == null) {
      showMsg(context, 'Please select an image');
      return;
    }
    if (formKey.currentState!.validate()) {
      final name = nameController.text;
      final description = descriptionController.text;
      final price = num.parse(priceController.text);
      final stock = num.parse(stockController.text);

      EasyLoading.show(status: 'please wait');

      try {
         final downloadUrl =
          await context.read<ProductProvider>().uploadImage(localImagePath!);
        final product = ProductModel(
          productName: name,
          description: description,
          categoryModel: categoryModel!,
          imageUrl: downloadUrl,
          price: price,
          stock: stock,
        );
        await context.read<ProductProvider>().saveProduct(product);
        EasyLoading.dismiss();
        showMsg(context, 'Saved');
        _resetFields();
      } catch (error) {
        EasyLoading.dismiss();
        print(error.toString());
      }
    }
  }

  void _resetFields() {
    setState(() {
      localImagePath = null;
      categoryModel = null;
      nameController.clear();
      descriptionController.clear();
      priceController.clear();
      stockController.clear();
    });
  }
}
