import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Ung dung tinh tong',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyCal(),
    );
  }
}

class MyCal extends StatefulWidget{
  @override
  _MyCalState createState(){
    return _MyCalState();
  }
}

class _MyCalState extends State<MyCal>{
  TextEditingController numControl1 = TextEditingController();
  TextEditingController numControl2 = TextEditingController();
  String kq='';
  void tinhtong(){
    double num1 = double.tryParse(numControl1.text) ?? 0.0;
    double num2 = double.tryParse(numControl2.text) ?? 0.0;
    double num = num1+num2;
    setState(() {
      kq = 'Tong: $num';
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(kq),));

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Ket qua')),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        TextField(controller: numControl1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: 'Nhap so 1'),),
        TextField(controller: numControl2,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: 'Nhap so 2'),),
        SizedBox(height: 10),
        ElevatedButton(onPressed: tinhtong, child: Text('Tinh tong')),
        SizedBox(height: 10),
      ]),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget{
  final String result;
  ResultScreen(this.result);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Ket qua tinh tong')),
      body: Center(child: Text(result,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
    );
  }
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// class Product
// {
//   String search_image;
//   String styleid;
//   String brands_filter_facet;
//   String price;
//   String product_additional_info;

//   Product(
//       {
//         required this.search_image,
//         required this.styleid,
//         required this.brands_filter_facet,
//         required this.price,
//         required this.product_additional_info
//       });
// }
// class ProductListScreen extends StatefulWidget
// {
//   @override
//   _ProductListScreenState createState() => _ProductListScreenState();
// }

// class _ProductListScreenState extends State<ProductListScreen>
// {
//   late List<Product> products;
//   @override
//   void initState()
//   {
//     // TODO: implement initState
//     super.initState();
//     products = [];
//     fetchProducts();
//   }

//   //http://localhost/asever/get.php
//   //http://192.168.0.101/asever/get.php
//   Future<void> fetchProducts() async
//   {
//     final response = await http.get(Uri.parse("http://192.168.0.101/asever/get.php"));
//     if(response.statusCode==200)
//     {
//       final Map<String,dynamic> data=json.decode(response.body);
//       setState(() {
//         products=convertMapToList(data);
//       });
//     }
//     else
//     {
//       throw Exception("Khong doc duoc du lieu");
//     }
//   }
//   List<Product> convertMapToList(Map<String,dynamic> data)
//   {
//     List<Product> productList = [];
//     data.forEach((key, value) {
//       for(int i=0;i<value.length;i++)
//       {
//         Product product = Product(
//             search_image:value[i]['search_image'] ?? '',
//             styleid: value[i]['styleid'] ?? '',
//             brands_filter_facet: value[i]['brands_filter_facet'] ?? '',
//             price: value[i]['price'] ?? '',
//             product_additional_info: value[i]['product_additional_info'] ?? '');
//         productList.add(product);
//       }
//     });
//     return productList;
//   }
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Danh sach san pham"),
//       ),
//       body: products != null ?
//       ListView.builder(
//           itemCount: products.length,
//           itemBuilder: (context, index){
//             return ListTile(
//               title: Text(products[index].brands_filter_facet),
//               subtitle: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('Price: ${products[index].price}'),
//                   Text('product_additional_info: ${products[index].product_additional_info}'),
//                 ],
//               ),
//               leading: Image.network(
//                 products[index].search_image,
//                 width: 50,
//                 height: 50,
//                 fit: BoxFit.cover,
//               ),
//               onTap: (){
//                 Navigator.push(context,
//                   MaterialPageRoute(builder: (context)=>ProductDetailScreen(products[index]),
//                   ),
//                 );
//               },
//             );
//           })
//           :Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }

// class ProductDetailScreen extends StatelessWidget{
//   final Product product;
//   ProductDetailScreen(this.product);
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Detail'),
//         actions: [
//           ElevatedButton(onPressed: (){
//             Navigator.push(context,
//             MaterialPageRoute(builder: (context)=>CartScreen()),);
//           }, 
//           child: Icon(Icons.shopping_cart),
//           style: ElevatedButton.styleFrom(
//             shape: CircleBorder(),
//             padding: EdgeInsets.all(0)
//           ),
//           ),
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(padding: const EdgeInsets.all(8),
//           child: Text('Nhanh: ${product.brands_filter_facet}'),
//           ),
//           Image.network(product.search_image),
//           Padding(padding: const EdgeInsets.all(8),
//           child: Text('Info: ${product.product_additional_info}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
//           ),
//           Padding(padding: const EdgeInsets.all(8),
//           child: Text('ID: ${product.styleid}'),
//           ),
//           Padding(padding: const EdgeInsets.all(8),
//           child: Text('Gia: ${product.price}'),
//           )
//         ],
//       ),
//     );
//   }
// }


// class CartScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Shopping Cart"),),
//       body: Center(child: Text('Gio hang cua ban'),
//       ),
//     );
//   }
  
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget
// {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context)
//   {
//     return MaterialApp(
//       title: 'Danh sach san pham',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: HomeScreen(),
//       //ProductListScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text("Trang chu"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: (){
//             Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductListScreen()),);
//           },
//           child: Text('Go to ProductListScreen'),
//         ),
//       ),
//     );
//   }

// }