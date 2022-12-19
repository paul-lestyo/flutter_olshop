import 'package:flutter/material.dart';
import 'package:flutter_olshop/screen/homepage_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            toolbarHeight: 60,
            actions: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Icon(
                  Icons.account_circle_rounded,
                  size: 32,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Nama'),
                ),
              ),
              IconButton(
                padding: EdgeInsets.all(20.0),
                onPressed: () {},
                alignment: Alignment.topRight,
                icon: const Icon(
                  Icons.manage_accounts_sharp,
                  size: 24,
                ),
              ),
            ],
          ),
          GridView.count(
            primary: false,
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        iconSize: 100,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.access_time_sharp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Riwayat pembelian',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        iconSize: 100,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.access_time_sharp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Riwayat pembelian',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        iconSize: 100,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.access_time_sharp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Riwayat pembelian',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        iconSize: 100,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.access_time_sharp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Riwayat pembelian',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 0,
            endIndent: 0,
            color: Colors.black,
          ),
          Column(
            children: [
              InkWell(
                child: Text('Frequently Asked Quest (FAQ)'),
              ),
              InkWell(
                child: Text('Chat with Customer Service'),
              ),
              InkWell(
                child: Text('Term And Condition'),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomepageScreen()));
          }
        },
        currentIndex: 2,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
