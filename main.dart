
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


import 'package:product/ScreenWelcome.dart';
import 'package:product/image.dart'as image;



void main() async {
WidgetsFlutterBinding.ensureInitialized();
await  Firebase.initializeApp();
runApp(MyApp());
}


class MyApp extends StatefulWidget {
const MyApp({Key? key}) : super(key: key);

static const String _title = 'Product';

@override
_MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
@override
Widget build(BuildContext context) {
return const MaterialApp(
title: MyApp._title,
debugShowCheckedModeBanner: false,
home: MyStatefulWidget(),
);
}
}


class MyStatefulWidget extends StatefulWidget {
const MyStatefulWidget({Key? key}) : super(key: key);

@override
_MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
Uint8List _image = Uint8List(0);

final formKEy=GlobalKey<FormState>();

final _productName = new TextEditingController();
final _category= new TextEditingController();
final _supplier = new TextEditingController();
final _model = new TextEditingController();
final _subCategory = new TextEditingController();
final _shortCategory = new TextEditingController();
final _fullCategory = new TextEditingController();
final _length = new TextEditingController();
final _height = new TextEditingController();
final _width = new TextEditingController();
final _volumeWeight = new TextEditingController();
final _actualWeight = new TextEditingController();
final _costPrice = new TextEditingController();
final _currency = new TextEditingController();
final _sRP = new TextEditingController();
final _wholeSale = new TextEditingController();
final _retail = new TextEditingController();




void _saveTasks(){
final productName= _productName.text;
final category= _category.text;
final supplier= _supplier.text;
final model=  _model.text;
final subCategory=  _subCategory.text;
final shortCategory=  _shortCategory.text;
final fullCategory=  _fullCategory.text;
final length=  _length.text;
final width=  _width.text;
final height=  _height.text;
final volumeWeight=_volumeWeight.text;
final actualWeight=_actualWeight.text;
final costPrice= _costPrice.text;
final currency=_currency.text;
final sRP=_sRP.text;
final wholeSale=_wholeSale.text;
final retail=_retail.text;

FirebaseFirestore.instance.collection("products")
.add({
"image": _image,
"productName": productName,
"category": category,
"supplier": supplier,
"model": model,
"subCategory": subCategory,
"shortCategory": shortCategory,
"fullCategory": fullCategory,
"length": length,
"width":width,
"height":height,
"volumeWeight":volumeWeight,
"actualWeight": actualWeight,
"costPrice": costPrice,
"currency": currency,
"sRP": sRP,
"wholeSale": wholeSale,
"retail": retail,
});
}


@override
Widget build(BuildContext context) {

return Scaffold( backgroundColor: Colors.transparent,
appBar: AppBar(
title: Padding(
padding: const EdgeInsets.only(right:32),
child: new Text('Product',style: TextStyle(fontSize: 30),),
),
centerTitle:true,shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
bottom: Radius.circular(30),
),
),
flexibleSpace: Container(

decoration: BoxDecoration(
gradient: LinearGradient(
colors: [Colors.purple, Colors.red],
begin: Alignment.bottomRight,
end: Alignment.topLeft,
),
),
),),

body: SingleChildScrollView(
child:   Center(
child:   Column(children: [
Padding(
padding: const EdgeInsets.only(top:14,left:14),
child:   Container(height:1400,width:1600,child: Column(
children: [
Row(
children: [
Column(crossAxisAlignment:CrossAxisAlignment.start,
children: [ SizedBox(height: 20,),
Text('Product Information',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
SizedBox(height: 50,),



Container(width:600,
child:   TextField(controller: _productName,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),  ),
labelText: 'Product Name',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
),),
),
),


SizedBox(height: 20,),
Container(width:600,
child:   TextField(controller: _category,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),  ),
labelText: 'Category',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
),),),),


SizedBox(height: 20,),
Container(width:600,
child:   TextField(controller: _supplier,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),  ),
labelText: 'Supplier',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
),),),),


SizedBox(height: 20,),
Container(width:600,
child:   TextField(controller: _model,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),  ),
labelText: 'Model',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
),),),),


SizedBox(height: 20,),
Container(width:600,
child:   TextField(controller: _productName,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),  ),
labelText: 'Short Description',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
),),),),


SizedBox(height: 20,),
Container(width:600,
child:   TextField(controller: _productName,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),  ),
labelText: 'Full Description',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
),),),),



]
),


Padding(
padding: const EdgeInsets.only(left:300),
child:   Container(child: Column(

children: [
Container(height:300,width:300,child: _image.length==0 ?Center(child: Text("Please upload image", style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 18.0,// double
),),)
:Image(image:Image.memory(_image).image, width: 200, height: 200,
)),





Padding(
padding: const EdgeInsets.all(32),
child:   Center(
child:   DecoratedBox(
decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple, Colors.red])),
child:   MaterialButton(height: 50, minWidth:100,shape: StadiumBorder(),
textColor: Colors.white,
onPressed:() async {


var imagePicker= ImagePicker();
var imageXFile =await  imagePicker.getImage(source: ImageSource.camera);
var image =   await imageXFile?.readAsBytes() ?? Uint8List(0);
setState(() {
_image = image;


});

},







child:Text("Upload Image",style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 25,// double
),)),
),
),
),
],
),
),
),
],
),

Padding(
padding: const EdgeInsets.only(top:34),
child:   Row(children: [



Container(width:600,height:400,child: Card(elevation:35,child:
Padding(

padding: const EdgeInsets.only(left:24),

child: Column(crossAxisAlignment:CrossAxisAlignment.start,children:[

Text("Dimension",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

Container(width:500,

child:   TextField(controller: _length,decoration: const InputDecoration(

enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),),

labelText: 'Length',labelStyle: TextStyle(

color: Colors.grey,

fontSize: 25,

)

),),

),







Container(width:500,

child:   TextField(controller: _width,decoration: const InputDecoration(

enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),),

labelText: 'Width',labelStyle: TextStyle(

color: Colors.grey,

fontSize: 25,

)



),),

),





Container(width:500,

child:   TextField(controller: _height,decoration: const InputDecoration(

enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),),

labelText: 'Height',labelStyle: TextStyle(

color: Colors.grey,

fontSize: 25,

)

),),

),



Container(width:500,
child: TextField(controller: _volumeWeight,
enabled:false,
decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),),
labelText: 'Volumetric Weight',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
),
),),

),





Container(width:500,
child: TextField(controller: _actualWeight,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),),
labelText: 'Actual Weight',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
),
),),
),
]),
),
),
),




Padding(
padding: const EdgeInsets.only(left:94),
child:   Container(width:600,height:400,child: Card(elevation:35,child:
Padding(
padding: const EdgeInsets.only(left:14),
child: Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
Text("Price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
Container(width:500,
child:   TextField(controller: _costPrice,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),),
labelText: 'Cost Price',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
)
),),
),



Container(width:500,
child:   TextField(controller: _currency,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),),
labelText: 'Currency',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
)
),),
),

Container(width:500,
child:   TextField(controller: _sRP,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),),
labelText: 'SRP',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
)
),),
),




Container(width:500,
child: TextField(controller: _wholeSale,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),),
labelText: 'Wholesale',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
),
),),
),


Container(width:500,
child: TextField(controller: _retail,decoration: const InputDecoration(
enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple),),
labelText: 'Retail',labelStyle: TextStyle(
color: Colors.grey,
fontSize: 25,
),
),),
),

]),
),
),
),
),



]),
),



Padding(
padding: const EdgeInsets.only(top:100),
child:   DecoratedBox(
decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple, Colors.red])),
child:   MaterialButton(height: 50, minWidth:100,shape: StadiumBorder(),
child:Text("Save",style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 25,// double
),),
textColor: Colors.white,
onPressed:() async {
if(_image.length!=0){
var imageUrl= await image.Image.upload('someImage.png',_image);

print(imageUrl);
}
else{
print("Must Select Image");
}


_saveTasks();
var productNameEntered = _productName.text;
var categoryEntered = _category.text;
var supplierEntered = _supplier.text;
var modelEntered= _model.text;
var subCategoryEntered= _subCategory.text;
var shortCategoryEntered= _shortCategory.text;
var fullCategoryEntered = _fullCategory.text;
var lengthEntered = _length.text;
var widthEntered = _width.text;
var heightEntered = _height.text;
var volumeWeightEntered = _volumeWeight.text;
var actualWeightEntered= _actualWeight.text;
var costPriceEntered = _costPrice.text;
var currencyEntered= _currency.text;
var sRPEntered = _sRP.text;
var wholeSaleEntered = _wholeSale.text;
var retailEntered = _retail.text;
print("productName $productNameEntered");
print("category $categoryEntered");
print("Supplier $supplierEntered");
print("Model $modelEntered");
print("SubCategory $subCategoryEntered");
print("ShortCategory $shortCategoryEntered");
print("FullCategory $fullCategoryEntered");
print("Length $lengthEntered");
print("Height $heightEntered");
print("VolumeWeight $volumeWeightEntered");
print("Actual Weight $actualWeightEntered");
print("CostPrice $costPriceEntered");
print("Currency $currencyEntered");
print("SRP $sRPEntered");
print("WholeSale $wholeSaleEntered");
print("Retail $retailEntered");



Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenWelcome(
one: productNameEntered,
second:categoryEntered,
third:supplierEntered,
four:modelEntered,
five:subCategoryEntered,
six:shortCategoryEntered,
seven: fullCategoryEntered,
eight: lengthEntered,
nine: widthEntered,
ten: heightEntered,
eleven: volumeWeightEntered,
twelve: actualWeightEntered,
thirteen:costPriceEntered,
fourteen:currencyEntered ,
fifteen:sRPEntered,
sixteen:wholeSaleEntered,

)));


},),
),
),



],
),

),
),





]),
),
)

);
}
}
