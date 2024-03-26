import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  final RxString _inputText = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Enter text',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _inputText.value = _textEditingController.text;
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Obx(() => _inputText.value.isEmpty
                ? Container()
                : Text(
                    'Entered text: ${_inputText.value}',
                    style: TextStyle(fontSize: 16),
                  )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.changeTheme(ThemeData.light()); // Change theme to light
        },
        child: Icon(Icons.light_mode),
      ),
    );
  }
}
