import 'package:flutter/material.dart';

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
            toolbarHeight: 100,
            actions: [
              Icon(
                Icons.account_circle_rounded,
                size: 96,
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
          Expanded(
            child: GridView.count(
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
                        flex: 3,
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
                          style: const TextStyle(fontSize: 24),
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
                        flex: 3,
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
                          style: const TextStyle(fontSize: 24),
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
                        flex: 3,
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
                          style: const TextStyle(fontSize: 24),
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
                        flex: 3,
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
                          style: const TextStyle(fontSize: 24),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
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
