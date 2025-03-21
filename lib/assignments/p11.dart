import 'package:flutter/material.dart';

class P11 extends StatefulWidget {
  const P11({super.key});

  @override
  State<P11> createState() => _P11State();
}

class _P11State extends State<P11> {
  int _currentStep = 0;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: (_currentStep + 1) / 2,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          SizedBox(height: 20),
          Expanded(
            child: IndexedStack(
              index: _currentStep,
              children: [
                Column(
                  children: [
                    TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextField(
                      controller: _addressController,
                      decoration: InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: _cityController,
                      decoration: InputDecoration(
                        labelText: 'City',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (_currentStep == 1)
                TextButton(
                  onPressed: () {
                    setState(() {
                      _currentStep--;
                    });
                  },
                  child: Text('Back'),
                ),
              ElevatedButton(
                onPressed: () {
                  if (_currentStep == 0) {
                    setState(() {
                      _currentStep++;
                    });
                  } else {
                    print('Form Submitted');
                    print('Name: ${_nameController.text}');
                    print('Email: ${_emailController.text}');
                    print('Address: ${_addressController.text}');
                    print('City: ${_cityController.text}');
                  }
                },
                child: Text(_currentStep == 0 ? 'Next' : 'Submit'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
