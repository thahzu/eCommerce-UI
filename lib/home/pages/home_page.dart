import 'package:ecommerce_ui/home/components/my_categories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        title: Image.asset(
          'images/logo_cty.png', // Thay bằng đường dẫn logo của bạn
          width: 120,
          height: 60,
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(), // Cuộn mềm mại
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search any Product...',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.mic, color: Colors.grey),
                ],
              ),
            ),

            // "All Featured" and Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "All Featured",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    // Sort Button
                    ElevatedButton.icon(
                      onPressed: () {
                        // Sort action
                      },
                      icon: const Icon(Icons.sort, size: 16),
                      label: const Text("Sort"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Nền trắng
                        foregroundColor: Colors.black, // Text và icon màu đen
                        elevation: 0, // Loại bỏ bóng
                        side: BorderSide(color: Colors.grey.shade300), // Viền
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),

                    // Filter Button
                    ElevatedButton.icon(
                      onPressed: () {
                        // Filter action
                      },
                      icon: const Icon(Icons.filter_alt, size: 16),
                      label: const Text("Filter"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 0,
                        side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
              MyCategories(
                categories: [
                  {"image": "images/goku_logo.jpg", "title": "Goku"},
                  {"image": "images/fb_logo.png", "title": "Goku"},
                  {"image": "images/x_logo.jpg", "title": "Goku"},
                  {"image": "images/applelogo.png", "title": "Goku"},
                  {"image": "images/gglogo.png", "title": "Goku"},

                ],
              ),
          ],
        ),
      ),
    );
  }
}
