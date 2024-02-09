import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeApp());
}

Color myCoffeeColor = const Color(0xFFC77C4D);

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coffee App",
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const CoffeeHomePage(),
    );
  }
}

class CoffeeHomePage extends StatelessWidget {
  const CoffeeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const CustomAppBar(
                title: "Detail",
                firstIcon: "images/arrow-left.jpg",
                secondIcon: "images/Heart.jpg")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Center(
                  child: Image.asset(
                    "images/Rectangle 1706.jpg",
                    scale: 0.87,
                  ),
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    child: CoffeeMenuItem(
                      description: "with Chocolate",
                      coffeeItem: "Cappucino",
                      rating: 4.8,
                      quantity: 230,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 100),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 245, 241, 241),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/bean.jpg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 245, 241, 241),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/milk.jpg',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.black.withOpacity(0.25), // Semi-opaque line
                  thickness: 1, // Thin line
                  height: 60, // Space above and below the divider
                ),
              ),
              const CoffeeDescriptionSection(
                  description:
                      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk the fo"),
              const CoffeeSizeSection(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 145,
          color: Colors.white,
          elevation: 0,
          shadowColor: Colors.black.withOpacity(0.2),
          child: CoffeeCheckoutSection(
              price: "\$ 4.53",
              button: RoundedButton(
                  text: "Buy Now",
                  textColor: Colors.white,
                  buttonColor: myCoffeeColor,
                  fontSize: 19.5,
                  borderColor: myCoffeeColor,
                  height: 70)),
        ));
  }
}