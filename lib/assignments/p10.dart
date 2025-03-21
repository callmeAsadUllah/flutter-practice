import 'package:flutter/material.dart';

class P10 extends StatefulWidget {
  const P10({super.key});

  @override
  State<P10> createState() => _P10State();
}

class _P10State extends State<P10> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Dummy product data
    final List<String> productImages = [
      'images/avatar-svgrepo-com.png',
      'images/product-ecommerce-shop-svgrepo-com.png',
      'images/avatar-svgrepo-com.png',
    ];
    final String productTitle = 'Product Title';
    final double productPrice = 432432498.34;
    final String productDescription =
        'This is a detailed description of the product. It provides all the necessary information about the product features and benefits.';

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 360,
            child: PageView.builder(
              controller: _pageController,
              itemCount: productImages.length,
              pageSnapping: true,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  productImages[index],
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(child: Text('Failed to load image'));
                  },
                );
              },
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              productImages.length,
              (index) => Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 2.0,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? Colors.blue : Colors.grey,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed:
                    _currentPage > 0
                        ? () {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        }
                        : null,
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed:
                    _currentPage < productImages.length - 1
                        ? () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        }
                        : null,
              ),
            ],
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              productTitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '\$${productPrice.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              productDescription,
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                print('Add to Cart Pressed');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Add to Cart', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
