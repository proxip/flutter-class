import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page.dart';
import 'page2.dart'; // Import Page2 if it's not already imported

class Page1 extends StatelessWidget {
  final RxString selectedOption = 'Option 1'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://via.placeholder.com/300'),
            SizedBox(height: 20),
            Text(
              'Welcome to Page 1',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Obx(() => DropdownButton<String>(
                  value: selectedOption.value,
                  onChanged: (String? newValue) {
                    selectedOption.value = newValue!;
                  },
                  items: <String>[
                    'Option 1',
                    'Option 2',
                    'Option 3',
                    'Option 4'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.offAll(HomePage());
              },
              child: Text('Back to Home'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(Page2()); // Navigate to Page2
              },
              child: Text('Go to Page2'),
            ),
          ],
        ),
      ),
    );
  }
}
