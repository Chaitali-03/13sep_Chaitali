import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_item.dart';
import 'cart_provider.dart';
import 'cart_screen.dart';


class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Menu'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          MenuItem(
            title: 'Vegetables and Poached Egg',
            price: 13.50,
            imageUrl: 'assets/images/vegetables_and_poached_egg.png',
          ),
          MenuItem(
            title: 'Avocado Salad',
            price: 19.28,
            imageUrl: 'assets/images/avocado_salad.png',
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final double price;
  final String imageUrl;

  MenuItem({
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);

    return Card(
      child: ListTile(
        leading: Image.asset(imageUrl),
        title: Text(title),
        subtitle: Text('\$${price.toStringAsFixed(2)}'),
        trailing: IconButton(
          icon: Icon(Icons.add_shopping_cart),
          onPressed: () {
            cart.addItem(CartItem(id: DateTime.now().toString(), title: title, price: price));
          },
        ),
      ),
    );
  }
}
