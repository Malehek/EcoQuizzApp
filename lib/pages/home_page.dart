import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz_page.dart';
import 'learn_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  Icon(Icons.eco, color: Colors.green[800], size: 60),
                  const SizedBox(height: 16),
                  Text(
                    'Welcome to ecoquizzapp!',
                    style: GoogleFonts.lexend(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[900],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 18),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Text(
                      'Test your knowledge on climate action, sustainability, and green habits. After each question, you\'ll learn an eco-fact. Your score will be shown at the end!',
                      style: GoogleFonts.lexend(
                        fontSize: 18,
                        color: Colors.grey[900],
                      ),
                      textAlign: TextAlign.center,
                    ),
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
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const QuizPage()),
                      );
                    },
                    icon: const Icon(Icons.play_arrow),
                    label: Text(
                      'Start Quiz',
                      style: GoogleFonts.lexend(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 18),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[700],
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LearnPage()),
                      );
                    },
                    icon: const Icon(Icons.menu_book),
                    label: Text(
                      'Learn More',
                      style: GoogleFonts.lexend(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
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