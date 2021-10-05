
import 'package:cloud_firestore/cloud_firestore.dart';

Product product = new Product();

class Product{
  Product({
    this.productID = 0,
    this.sku = 0,
    this.skuID = 0,
    this.supplierID= 0,
    this.name= '',
    this.categoryID=0,
    this.quantityPerUnit= 0,
    this.costPrice= 0,
    this.sellingPrice= 0,
    this.length= 0,
    this.height= 0,
    this.width= 0,
    this.discount= 0,
    this.weight= 0,
    this.inStock= 0,
    this.backOrder= 0,
    this.preOrder= 0,
    this.note='',
  });

  int productID;
  int sku;
  int skuID;
  int supplierID;
  String name;
  int categoryID;
  int quantityPerUnit;
  int costPrice;
  int sellingPrice;
  int length;
  int height;
  int width;
  int discount;
  int weight;
  int inStock;
  int backOrder;
  int preOrder;
  String note;

  static dynamic add(Product product) async {

    var firebaseFirestore = FirebaseFirestore.instance;
    var collection = firebaseFirestore.collection('products');
    var result = await collection.add({
      'productID' : product.productID,
      'sku': product.sku,
      'skuID': product.skuID,
      'supplierID' : product.supplierID,
      'name': product.name,
      'categoryID': product.categoryID,
      'quantityPerUnit' : product.quantityPerUnit,
      'costPrice': product.costPrice,
      'sellingPrice': product.sellingPrice,
      'length' : product.length,
      'height' : product.height,
      'width' : product.width,
      'discount' : product.discount,
      'weight' : product.weight,
      'inStock': product.inStock,
      'backOrder': product.backOrder,
      'preOrder': product.preOrder,
      'note': product.note,

    });
    return result;
  }

  static dynamic get(String uid) async {
    var model = new Product();
    await FirebaseFirestore.instance
        .collection('products')
        .get()
        .then((var snapshot){
      var data = snapshot.docs.first;
      model.productID = data['productID'];
      model.sku = data['sku'];
      model.skuID = data['skuID'];
      model.supplierID = data['supplierID'];
      model.name = data['name'];
      model.categoryID = data['categoryID'];
      model.quantityPerUnit = data['quantityPerUnit'];
      model.costPrice = data['costPrice'];
      model.sellingPrice = data['sellingPrice'];
      model.length = data['length'];
      model.height = data['height'];
      model.width = data['width'];
      model.discount = data['discount'];
      model.weight = data['weight'];
      model.inStock = data['inStock'];
      model.backOrder = data['backOrder'];
      model.preOrder = data['preOrder'];
      model.note = data['note'];
    });
    return model;

  }

}
