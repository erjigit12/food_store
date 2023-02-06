// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:pizzastored/components/orders_menu.dart';
import 'package:pizzastored/model/Food.dart';

class ImperiaPizza extends StatefulWidget {
  const ImperiaPizza({Key? key}) : super(key: key);

  @override
  _ImperiaPizzaState createState() => _ImperiaPizzaState();
}

class _ImperiaPizzaState extends State<ImperiaPizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pizzaback.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 80, right: 180),
                  child: Text(
                    'Империя Пиццы',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90),
                  child: SizedBox(
                    width: 210,
                    height: 130,
                    child: Image(
                      image: AssetImage(
                        'assets/images/pizza.png',
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50, right: 300),
                  child: Text(
                    'Меню',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                const SizedBox(height: 20),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: food.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        OrdersMenu(img: '${food[0]}'),
                        const SizedBox(height: 12),
                        OrdersMenu(img: '${food[1]}'),
                        const SizedBox(height: 12),
                        OrdersMenu(img: '${food[2]}'),
                      ],
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
