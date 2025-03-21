import 'package:flutter/material.dart';

class ProductItem {
  final String image;
  final String title;
  final double price;
  int quantity;

  ProductItem({
    required this.image,
    required this.title,
    required this.price,
    this.quantity = 1,
  });
}

class P16 extends StatelessWidget {
  P16({super.key});

  final List<ProductItem> cartItems = [
    ProductItem(
      image: 'images/product-guide-svgrepo-com.png',
      title: 'Product 1',
      price: 19.99,
      quantity: 2,
    ),
    ProductItem(
      image: 'images/product-guide-svgrepo-com.png',
      title: 'Product 2',
      price: 29.99,
      quantity: 1,
    ),
    ProductItem(
      image: 'images/product-guide-svgrepo-com.png',
      title: 'Product 3',
      price: 29.9,
      quantity: 1,
    ),
    ProductItem(
      image: 'images/product-guide-svgrepo-com.png',
      title: 'Product 3',
      price: 29.99,
      quantity: 1,
    ),
    ProductItem(
      image: 'images/product-guide-svgrepo-com.png',
      title: 'Product 4',
      price: 29.99,
      quantity: 1,
    ),
    ProductItem(
      image: 'images/product-guide-svgrepo-com.png',
      title: 'Product 5',
      price: 232,
      quantity: 1,
    ),
    ProductItem(
      image: 'images/product-guide-svgrepo-com.png',
      title: 'Product 6',
      price: 29.99,
      quantity: 1,
    ),
    ProductItem(
      image: 'images/product-guide-svgrepo-com.png',
      title: 'Product 7',
      price: 29.99,
      quantity: 1,
    ),
  ];

  double getTotalPrice() {
    return cartItems.fold(
      0,
      (sum, product) => sum + (product.price * product.quantity),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: cartItems.length,
            separatorBuilder:
                (context, index) => Divider(color: Colors.amber[400]),
            itemBuilder: (BuildContext context, int index) {
              final product = cartItems[index];
              return ListTile(
                leading: Image.asset(
                  product.image,
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                ),
                title: Text(product.title),
                subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
                trailing: Text('Qty: ${product.quantity}'),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Total: \$${getTotalPrice().toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              print('Checkout Pressed');
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
            ),
            child: Text('Checkout'),
          ),
        ),
      ],
    );
  }
}
