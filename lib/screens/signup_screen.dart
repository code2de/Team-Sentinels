import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  String gender = 'Male';

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _signUp() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text("Create Account"),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildTextField(label: "Name"),
                const SizedBox(height: 15),
                _buildTextField(label: "Email", keyboardType: TextInputType.emailAddress),
                const SizedBox(height: 15),
                _buildTextField(label: "Mobile No", keyboardType: TextInputType.phone),
                const SizedBox(height: 15),
                _buildGenderDropdown(),
                const SizedBox(height: 15),
                _buildTextField(label: "City"),
                const SizedBox(height: 15),
                _buildTextField(label: "Country"),
                const SizedBox(height: 30),
                SizedBox(
                  width: 140,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: _signUp,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text("Sign Up", style: TextStyle(fontSize: 16)),
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, '/login'),
                  child: const Text(
                    "Already have an account? Login",
                    style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String label, TextInputType keyboardType = TextInputType.text}) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      validator: (value) => value == null || value.isEmpty ? 'Enter your $label' : null,
    );
  }

  Widget _buildGenderDropdown() {
    return DropdownButtonFormField<String>(
      value: gender,
      decoration: InputDecoration(
        labelText: 'Gender',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      items: ['Male', 'Female', 'Other'].map((g) {
        return DropdownMenuItem(value: g, child: Text(g));
      }).toList(),
      onChanged: (value) => setState(() => gender = value!),
    );
  }
}