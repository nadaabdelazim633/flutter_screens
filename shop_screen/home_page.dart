import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.chair, 'label': 'Sofas'},
    {'icon': Icons.checkroom, 'label': 'Wardrobe'}, 
    {'icon': Icons.desk, 'label': 'Desk'},
    {'icon': Icons.bathroom, 'label': 'Dresser'},
  ];

  final List<Map<String, dynamic>> products = [
    {
      'name': 'FinnNavian',
      'desc': 'Scandinavian small sized double sofa...',
      'price': 248,
      'image': 'https://i.imgur.com/4YyRUOU.png',
      'isFav': true,
    },
    {
      'name': 'FinnNavian',
      'desc': 'Scandinavian small sized black chair...',
      'price': 150,
      'image': 'https://i.imgur.com/6xKiJw3.png',
      'isFav': false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE46E),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://i.imgur.com/QCNbOAo.png'),
              ),
              trailing: Icon(Icons.menu, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Hello, Pino",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("What do you want to buy?",
                  style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search, color: Colors.amber),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Icon(categories[i]['icon'], size: 30),
                        Text(categories[i]['label']),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (_, i) {
                    var p = products[i];
                    return ListTile(
                      contentPadding: EdgeInsets.all(16),
                      leading: Image.network(p['image'], width: 60),
                      title: Text(p['name']),
                      subtitle: Text(p['desc']),
                      trailing: Column(
                        children: [
                          Icon(p['isFav']
                              ? Icons.favorite
                              : Icons.favorite_border),
                          SizedBox(height: 8),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber),
                            onPressed: () {},
                            child: Text("\$${p['price']}"),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chair), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
