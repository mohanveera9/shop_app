import 'package:flutter/material.dart';
import 'package:shop_app/Pages/cart_page.dart';
import 'package:shop_app/Pages/product_List_page.dart';


// ignore: camel_case_types
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage=0;
  List<Widget> pages= const [ProductListPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),// pages[currentPage]
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex:currentPage ,
        onTap: (value){
          setState(() {
            currentPage= value;
          });
        },
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
        ]
      ),
    );
  }
}
