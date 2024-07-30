import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SBButton extends StatelessWidget {
  const SBButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class StockButton extends StatelessWidget {
  const StockButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          shadowColor: const Color.fromARGB(0, 0, 0, 0)),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          color: Colors.black54,
          fontSize: 24,
          fontWeight: FontWeight.w500
        ),
      )
    );
  }
}
/*
class TestButton extends StatelessWidget {
  const TestButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          shadowColor: const Color.fromARGB(0, 0, 0, 0)),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          color: Colors.black54,
          fontSize: 24,
          fontWeight: FontWeight.w500
        ),
      )
    );
  }
}
*/