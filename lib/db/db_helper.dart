import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecomerce_admin_app/models/category_model.dart';
import 'package:ecomerce_admin_app/models/product_model.dart';

class DbHelper{
  final _db = FirebaseFirestore.instance;
  final String collectionAdmin = 'Admin';
  final String collectionCategory = 'Categories';
  final String collectionProduct = 'Products';

  Future<bool> isAdmin(String uid) async{
     final snapshot = await _db.collection(collectionAdmin).doc(uid).get();
     return snapshot.exists;
  }

  Future<void> addCategory(CategoryModel model) async{
    await _db.collection(collectionCategory).add(model.toJson());
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getAllCategories(){
    return _db.collection(collectionCategory).orderBy('name').snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getAllProducts(){
    return _db.collection(collectionProduct).snapshots();
  }

  Future<void> addProduct(ProductModel product) async{
    final doc = _db.collection(collectionProduct).doc();
    product.productId = doc.id;
    return doc.set(product.toJson());
  }
}