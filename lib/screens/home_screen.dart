import 'package:flutter/material.dart';
import 'explore_screen.dart';

class HomeScreen extends StatelessWidget {
  static const List<String> imagePaths = [
    'assets/img1.jpg',
    'assets/img2.jpg',
    'assets/img3.png',
  ];
  const HomeScreen({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E8FF),
      appBar: AppBar(
        title: const Text('TrustChain Home'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Welcome to TrustChain',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          imagePaths[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'Image ${index + 1}',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              },
            ),

            const SizedBox(height: 20),

            // 🚀 Explore Button with Arrow
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Explore Reviews',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ExploreScreen(), // Add const if your ExploreScreen is stateless
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Footer
            _buildFooterSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }

  Widget _buildDomainCard(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Text(title, style: const TextStyle(fontSize: 16)),
    );
  }

  Widget _buildFooterSection() {
    final links = [
      'About us', 'Jobs', 'Contact', 'Blog',
      'How TrustChain works', 'Transparency Report',
      'Press', 'Investor Relations', 'Trust in Reviews',
      'Help Center', 'Log in', 'Sign up',
    ];

    return Container(
      color: Colors.deepPurple.shade100,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Explore TrustChain', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          for (var link in links)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(link, style: const TextStyle(fontSize: 14, color: Colors.black87)),
            ),
          const SizedBox(height: 20),
          const Text('TrustChain © 2025 - All rights reserved.', style: TextStyle(color: Colors.black54)),
        ],
      ),
    );
  }
}
