import 'package:flutter/material.dart';
import '../widgets/custom_header.dart';
import '../widgets/profile_card.dart';
import '../widgets/category_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// 🔹 APPBAR
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Explore Categories"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.notifications_none),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.person_outline),
          ),
        ],
      ),

      /// 🔹 BODY
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            /// Header personalizado
            CustomHeader(),

            SizedBox(height: 20),

            /// Tarjeta principal personalizada
            ProfileCard(),

            SizedBox(height: 20),

            /// Lista categorías
            Expanded(
              child: Column(
                children: [
                  CategoryItem(title: "Technology"),
                  CategoryItem(title: "Design"),
                  CategoryItem(title: "Development"),
                ],
              ),
            ),
          ],
        ),
      ),

      /// 🔹 BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
