import 'package:cypherdevs_app/widgets/stackwidget.dart';
import 'package:cypherdevs_app/widgets/text_field.dart';
// import 'package:cypherdevs_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class MyFavorites extends StatefulWidget {
  const MyFavorites({super.key});

  @override
  State<MyFavorites> createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Favorite',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back_sharp,
          color: Color.fromARGB(255, 174, 20, 71),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 75.0),
          child: TextFieldWidget(
            hintTitle: 'Search keywords',
            frontIcon: Icons.search_outlined,
            backIcon: Icons.tune_outlined,
            radius: BorderRadius.circular(20.0),
            frontIconColor: Colors.grey,
            backIconColor: Colors.green,
            hintTitleColor: Colors.grey
          )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 8.0,
          selectedItemColor: const Color.fromARGB(230, 216, 21, 177),
          unselectedItemColor: Colors.grey[600],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(230, 216, 21, 177),
              icon: Icon(Icons.favorite_outline),
              label: 'My Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart_outlined),
              label: 'My Carts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'My Profile',
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FavoriteFoodStack(
                      colorFill: Colors.grey[300],
                      topImage: const AssetImage('assets/img/Chicken-02.jfif'),
                      menuName: 'Strewberry',
                      iconColorFill: const Color.fromARGB(255, 174, 20, 71),
                      priceColorFill: Colors.green,
                      price: '\$180.00',
                    ),
                    FavoriteFoodStack(
                      colorFill: Colors.grey[300],
                      topImage:
                          const AssetImage('assets/img/Continental-01.jfif'),
                      menuName: 'Redcherries',
                      iconColorFill: const Color.fromARGB(255, 174, 20, 71),
                      priceColorFill: Colors.green,
                      price: '\$150.00',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FavoriteFoodStack(
                      colorFill: Colors.grey[300],
                      topImage:
                          const AssetImage('assets/img/Continental-01.jfif'),
                      menuName: 'Redcherries',
                      iconColorFill: const Color.fromARGB(255, 174, 20, 71),
                      priceColorFill: Colors.green,
                      price: '\$150.00',
                    ),
                    FavoriteFoodStack(
                      colorFill: Colors.grey[300],
                      topImage: const AssetImage('assets/img/Chicken-02.jfif'),
                      menuName: 'Strewberry',
                      iconColorFill: const Color.fromARGB(255, 174, 20, 71),
                      priceColorFill: Colors.green,
                      price: '\$180.00',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FavoriteFoodStack(
                      colorFill: Colors.grey[300],
                      topImage: const AssetImage('assets/img/Chicken-02.jfif'),
                      menuName: 'Strewberry',
                      iconColorFill: const Color.fromARGB(255, 174, 20, 71),
                      priceColorFill: Colors.green,
                      price: '\$180.00',
                    ),
                    FavoriteFoodStack(
                      colorFill: Colors.grey[300],
                      topImage:
                          const AssetImage('assets/img/Continental-01.jfif'),
                      menuName: 'Redcherries',
                      iconColorFill: const Color.fromARGB(255, 174, 20, 71),
                      priceColorFill: Colors.green,
                      price: '\$150.00',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FavoriteFoodStack(
                      colorFill: Colors.grey[300],
                      topImage:
                          const AssetImage('assets/img/Continental-01.jfif'),
                      menuName: 'Redcherries',
                      iconColorFill: const Color.fromARGB(255, 174, 20, 71),
                      priceColorFill: Colors.green,
                      price: '\$150.00',
                    ),
                    FavoriteFoodStack(
                      colorFill: Colors.grey[300],
                      topImage: const AssetImage('assets/img/Chicken-02.jfif'),
                      menuName: 'Strewberry',
                      iconColorFill: const Color.fromARGB(255, 174, 20, 71),
                      priceColorFill: Colors.green,
                      price: '\$180.00',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
