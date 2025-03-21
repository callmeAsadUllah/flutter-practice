import 'package:flutter/material.dart';

class P08 extends StatefulWidget {
  const P08({super.key});

  @override
  State<P08> createState() => _P08State();
}

class _P08State extends State<P08> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String _nameError = '';
  String _emailError = '';
  String _phoneError = '';

  void _validateForm() {
    setState(() {
      _nameError = '';
      _emailError = '';
      _phoneError = '';

      if (_nameController.text.isEmpty) {
        _nameError = 'Name is required';
      }

      if (_emailController.text.isEmpty) {
        _emailError = 'Email is required';
      } else if (!_emailController.text.contains('@')) {
        _emailError = 'Enter a valid email';
      }

      if (_phoneController.text.isEmpty) {
        _phoneError = 'Phone is required';
      } else if (_phoneController.text.length != 10) {
        _phoneError = 'Phone must be 10 digits';
      }

      if (_nameError.isEmpty && _emailError.isEmpty && _phoneError.isEmpty) {
        print('Form Submitted');
        print('Name: ${_nameController.text}');
        print('Email: ${_emailController.text}');
        print('Phone: ${_phoneController.text}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
                errorText: _nameError.isEmpty ? null : _nameError,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                errorText: _emailError.isEmpty ? null : _emailError,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
                errorText: _phoneError.isEmpty ? null : _phoneError,
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: _validateForm,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Submit', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
