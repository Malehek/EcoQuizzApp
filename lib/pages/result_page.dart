import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class ResultPage extends StatelessWidget {
  final int score;
  final int total;

  const ResultPage({super.key, required this.score, required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF43E97B), Color(0xFF38F9D7), Color(0xFF3A7BD5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            color: const Color(0xFFfff176),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 48),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.emoji_events, color: Colors.orange[800], size: 60),
                  const SizedBox(height: 16),
                  Text(
                    'Quiz Complete!',
                    style: GoogleFonts.lexend(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900],
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    '$score / $total',
                    style: GoogleFonts.lexend(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF43A047),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Thank you for taking the Climate Action Quiz!\nKeep learning and taking action for our planet.',
                    style: GoogleFonts.lexend(
                      fontSize: 18,
                      color: const Color(0xFF3A3A3A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF43A047),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      textStyle: GoogleFonts.lexend(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const HomePage()),
                        (route) => false,
                      );
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Restart Quiz'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}