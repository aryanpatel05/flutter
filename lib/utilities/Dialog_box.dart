import 'package:flutter/material.dart';
import 'package:my_app/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancle;

  DialogBox({
    super.key,
    required this.controller,
    required this.onCancle,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.indigo[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter text"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(onPressed: onSave, text: "Save"),
                MyButton(onPressed: onCancle, text: "Cancel"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
