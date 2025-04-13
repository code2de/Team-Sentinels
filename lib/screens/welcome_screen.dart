import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Map<String, dynamic>> pages = [
    {
      'title': "Verify. Review. Trust.",
      'image': 'assets/img1.jpg',
      'color': const Color(0xFFF6F0FA),
    },
    {
      'title': "Your Go-To Hub for Transparent Reviews",
      'image': 'assets/img3.png',
      'color': const Color(0xFFFFF9D5),
    },
    {
      'title': "Explore Real Reviews, Share Genuine Feedback",
      'image': 'assets/img2.jpg',
      'color': const Color(0xFFFFF2E3),
    },
  ];

  String selectedCountry = "United Kingdom";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: pages.length,
        onPageChanged: (index) => setState(() => _currentIndex = index),
        itemBuilder: (context, index) {
          final page = pages[index];
          return SafeArea(
            child: Container(
              color: page['color'],
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  Text(
                    page['title'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  Image.asset(
                    page['image'],
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                  const Spacer(),
                  _countryDropdown(),
                  const SizedBox(height: 20),
                  _button("Create account", Colors.black, Colors.white, () {
                    Navigator.pushNamed(context, '/signup');
                  }),
                  const SizedBox(height: 10),
                  _button("Sign in", Colors.white, Colors.black, () {
                    Navigator.pushNamed(context, '/login');
                  }),
                  const SizedBox(height: 10),
                  Text(
                    "You'll be redirected to trustchain.com to sign in.",
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("User Terms", style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                      const Text(" • "),
                      Text("Privacy", style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _button(String text, Color bgColor, Color textColor, VoidCallback onTap) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          side: BorderSide(color: Colors.black, width: 1),
        ),
        child: Text(text, style: TextStyle(color: textColor)),
      ),
    );
  }

  Widget _countryDropdown() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedCountry,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: ['United Kingdom', 'India', 'United States', 'Germany', 'Japan']
              .map((c) => DropdownMenuItem(value: c, child: Text("I live in: $c")))
              .toList(),
          onChanged: (value) => setState(() => selectedCountry = value!),
        ),
      ),
    );
  }
}