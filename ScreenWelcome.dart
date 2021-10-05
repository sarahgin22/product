import 'package:flutter/material.dart';

class ScreenWelcome extends StatelessWidget {
  final one;
  final second;
  final third;
  final four;
  final five;
  final six;
  final seven;
  final eight;
  final nine;
  final ten;
  final eleven;
  final twelve;
  final thirteen;
  final fourteen;
  final fifteen;
  final sixteen;



  ScreenWelcome({
    @required this.one,
    @required this.second,
    @required this.third,
    @required this.four,
    @required this.five,
    @required this.six,
    @required this.seven,
    @required this.eight,
    @required this.nine,
    @required this.ten,
    @required this.eleven,
    @required this.twelve,
    @required this.thirteen,
    @required this.fourteen,
    @required this.fifteen,
    @required this.sixteen,


  });
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Center(child: Text('Product Screen',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),)
),centerTitle:true,
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
child:
Padding(
padding: const EdgeInsets.all(12.0),
child:Container(

child: Column(crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
  padding: const EdgeInsets.all(24),
  child:   Row(mainAxisAlignment: MainAxisAlignment.center,children:[

  Image.asset('image/hik.jpg' , height:200, width:200),

  ]),
),

  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Product Name: $one", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Category: $second", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Supplier: $third", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height:20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Model: $four", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("SubCategory: $five", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("ShortCategory: $six", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("FullCategory : $seven", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Length: $eight", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Width: $nine", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Height: $ten", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Volume Weight: $eleven", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("ActualWeight: $twelve", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Cost Price: $thirteen", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Currency: $fourteen", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("SRP: $fifteen", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(12),
    child: Text("Whole Sale: $sixteen", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
  ),SizedBox(height: 20,),


]
),
),
),
),
);
}
}
