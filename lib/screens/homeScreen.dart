// ignore_for_file: file_names

import 'package:cypherdevs_app/widgets/clickable_button.dart';
import 'package:cypherdevs_app/widgets/menu.dart';
import 'package:cypherdevs_app/widgets/popularmenu.dart';
import 'package:cypherdevs_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ]
        ),
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
        width: 300,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 70.0, 8.0, 8.0),
          child: Container(
            margin: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 12.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/img/nick.jpg'),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.person_outline,
                  ),
                  title: Text(
                    'User Information',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.add_shopping_cart_outlined,
                  ),
                  title: Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.favorite_outline,
                  ),
                  title: Text(
                    'My Favorite',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.notification_add_outlined,
                  ),
                  title: Text(
                    'Notification',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.headset_mic_sharp,
                  ),
                  title: Text(
                    'Help',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.logout_outlined,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 150.0,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    fixedSize: WidgetStatePropertyAll(Size(300.0, 30.0)),
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(230, 216, 21, 177)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Check Order Status',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.white,
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        scrolledUnderElevation: 8.0,
        toolbarHeight: 130.0,
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/img/nick.jpg',
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size(double.maxFinite, 50.0),
          child: Column(
            children: [
              const ListTile(
                horizontalTitleGap: 5.0,
                leading: Icon(
                  Icons.location_pin,
                  color: Color.fromARGB(255, 9, 194, 16),
                ),
                title: Text(
                  'Lagos hostel, Unilorin',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
                  child: TextFieldWidget(
                    radius: BorderRadius.circular(100.0),
                    hintTitle: 'Search categories, restaurants etc',
                    frontIcon: Icons.search,
                    backIcon: Icons.filter_list_outlined,
                    backIconColor: Colors.grey, 
                    frontIconColor: Colors.grey, 
                    hintTitleColor: null, 
                    obscure: false,
                  ),
                ),
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.maxFinite,
                color: const Color.fromARGB(255, 223, 126, 158),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const Image(
                            fit: BoxFit.fill,
                            width: 120.0,
                            height: 100.0,
                            image: AssetImage('assets/img/Continental-01.jfif'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      const Column(
                        children: [
                          Text(
                            'Exclusive Offer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Get 30% Off On Steak, at',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'TC Grills',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          ClickableButton(
                            title: 'Order Now',
                            buttonColor: Color.fromARGB(255, 16, 177, 21),
                            titleColor: Colors.white,
                            width: 80.0,
                            heigth: 30.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const ListTile(
                contentPadding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                title: Text(
                  'Categories',
                  style: TextStyle(
                    color: Color.fromARGB(255, 174, 20, 71),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Color.fromARGB(255, 174, 20, 71),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/img/beverag-01.jfif'),
                          radius: 30.0,
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Beverages',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/img/Continental-01.jfif'),
                          radius: 30.0,
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Continentals',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/img/Chocolate_coffee.jfif'),
                          radius: 30.0,
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Seafood',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/img/Continental-06.jfif'),
                          radius: 30.0,
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Snack',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                title: Text(
                  'Restaurants',
                  style: TextStyle(
                    color: Color.fromARGB(255, 174, 20, 71),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Color.fromARGB(255, 174, 20, 71),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const MyMenu(
                            foodImage: AssetImage('assets/img/Chicken-04.jfif'),
                            title: 'Chicken Republic',
                            distance: '3.2 km',
                            review: '5.0 reviewa')),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const MyMenu(
                          foodImage: AssetImage(
                              'assets/img/Continental-06.jfif'),
                          title: 'Item7 Go',
                          distance: '180 km',
                          review: "5.0 revie"
                      )
                    ),
                  ],
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                title: Text(
                  'Popular Orders',
                  style: TextStyle(
                    color: Color.fromARGB(255, 174, 20, 71),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Color.fromARGB(255, 174, 20, 71),
                ),
              ),
              Column(
                children: [
                  Transform.translate(
                    offset: const Offset(0.0, 0.0),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuItems(
                            menuImage:
                                AssetImage('assets/img/Spaghetti-01.jfif'),
                            title: 'Spaghetti with Sussage',
                            price: '#1,500',
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          MenuItems(
                            menuImage:
                                AssetImage('assets/img/Continental-12.jfif'),
                            title: 'Spaghetti with Sussage',
                            price: '#1,500',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0.0, -50.0),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuItems(
                            menuImage:
                                AssetImage('assets/img/Continental-01.jfif'),
                            title: 'Spaghetti with Sussage',
                            price: '#1,500',
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          MenuItems(
                            menuImage:
                                AssetImage('assets/img/Chicken-01.jfif'),
                            title: 'Spaghetti with Sussage',
                            price: '#1,500',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
