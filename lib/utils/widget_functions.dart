import 'package:flutter/material.dart';

showMsg(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
}

showSingleInputDialog({
  required BuildContext context,
  required String hint,
  required String title,
  TextInputType textInputType = TextInputType.text,
  String possBtnText = 'Save',
  String negBtnText = 'Close',
  required Function(String) onSave,
}) {
  final controller = TextEditingController();

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          controller: controller,
          keyboardType: textInputType,
          decoration: InputDecoration(labelText: hint),
        ),
      ),
      actions: [
        TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text(negBtnText),
        ),
        ElevatedButton(
          onPressed: (){
            if(controller.text.isEmpty) return;
            onSave(controller.text);
            Navigator.pop(context);
          },
          child: Text(possBtnText),
        )
      ],
    ),
  );
}
