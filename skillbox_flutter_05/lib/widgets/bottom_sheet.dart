import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    required this.result,
  });

  final String result;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.wallet),
                const Text('Итоговая сумма', style: TextStyle(fontSize: 18)),
                Text('$result рублей', style: const TextStyle(fontSize: 18)),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Оплатить'),
            ),
          ],
        ),
      ),
    );
  }
}
