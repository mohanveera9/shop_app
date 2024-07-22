import 'package:flutter/material.dart';

class ProductsCart extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color bg;
  const ProductsCart({
    super.key,
    required this.title,
    required this.price,
    required this.image, 
    required this.bg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.all(20),
      padding:const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\$ $price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Image(
              image: AssetImage(image),
              height: 175,
            ),
          ),
        ],
      ),
    );
  }
}
