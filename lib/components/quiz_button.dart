import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    required this.isTrue, Key? key, 
    required this.onPressed}) 
  : super(key: key);

  final bool isTrue;
  final void Function(bool) onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: () => onPressed(isTrue),
        style: ElevatedButton.styleFrom(
          // ignore: deprecated_member_use
          primary: isTrue ? const Color(0xff4caf52) : const Color(0xfff54335),
        ),
        child: Text(
          isTrue ? 'Tyypa' : 'Tyypa эмec',
          style: const TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
