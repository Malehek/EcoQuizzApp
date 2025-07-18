import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tips = [
      "🌱 Plant a tree or support reforestation projects.",
      "🚲 Use public transport, cycle, or walk instead of driving.",
      "💡 Switch to energy-efficient LED bulbs.",
      "🔌 Unplug electronics when not in use to save energy.",
      "🥕 Eat more plant-based meals to reduce your carbon footprint.",
      "♻️ Recycle and reuse materials whenever possible.",
      "🚿 Take shorter showers to conserve water.",
      "🛒 Buy local and seasonal produce to cut down on food miles.",
      "🧥 Donate or upcycle old clothes instead of throwing them away.",
      "🌞 Use renewable energy sources if available.",
      "📱 Spread awareness about climate action on social media.",
      "🗳️ Support policies and leaders that prioritize climate action.",
      "📚 Educate yourself and others about SDG 13 and sustainability.",
      "🧃 Avoid single-use plastics; use reusable bottles and bags.",
      "🏡 Insulate your home to reduce heating and cooling needs.",
      "🌳 Protect and restore natural habitats in your community.",
      "🚯 Never litter—keep your environment clean.",
      "🧑‍🤝‍🧑 Join or support local environmental groups.",
      "🧑‍🔬 Stay informed about scientific developments on climate change.",
      "🌍 Remember: Every small action counts toward a healthier planet!"
    ];

    final articles = [
      {
        "title": "What is SDG 13: Climate Action?",
        "content":
            "SDG 13 calls for urgent action to combat climate change and its impacts. It aims to strengthen resilience and adaptive capacity to climate-related hazards, integrate climate measures into policies, and improve education and awareness."
      },
      {
        "title": "Why is Climate Action Important?",
        "content":
            "Climate change is causing rising sea levels, extreme weather, and loss of biodiversity. Taking action now helps protect our planet, health, and future generations."
      },
      {
        "title": "How Can You Contribute?",
        "content":
            "You can reduce your carbon footprint by making sustainable choices in energy, transport, food, and waste. Advocate for climate-friendly policies and educate others about the importance of climate action."
      },
      {
        "title": "Key SDG 13 Targets",
        "content":
            "• Strengthen resilience to climate hazards\n• Integrate climate measures into national policies\n• Improve education and awareness\n• Mobilize financial resources for climate action"
      },
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF43E97B), Color(0xFF38F9D7), Color(0xFF3A7BD5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Card(
              elevation: 16,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              color: const Color(0xFFfff176),
              child: Container(
                width: 420,
                constraints: const BoxConstraints(maxWidth: 500),
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.eco, color: Colors.green[800], size: 36),
                          const SizedBox(width: 10),
                          Text(
                            "Learn & Take Action",
                            style: GoogleFonts.lexend(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[900],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Text(
                        "🌏 SDG 13: Climate Action",
                        style: GoogleFonts.lexend(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.green[800],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Take urgent action to combat climate change and its impacts. Explore tips and articles below to learn how you can make a difference.",
                        style: GoogleFonts.lexend(
                          fontSize: 16,
                          color: Colors.grey[900],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "🌟 Green Tips",
                        style: GoogleFonts.lexend(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(height: 10),
                      ...tips.map((tip) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("• ", style: TextStyle(fontSize: 18)),
                                Expanded(
                                  child: Text(
                                    tip,
                                    style: GoogleFonts.lexend(
                                      fontSize: 16,
                                      color: Colors.green[900],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(height: 28),
                      Text(
                        "📖 Articles & Insights",
                        style: GoogleFonts.lexend(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(height: 10),
                      ...articles.map((article) => Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  article["title"]!,
                                  style: GoogleFonts.lexend(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.orange[900],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  article["content"]!,
                                  style: GoogleFonts.lexend(
                                    fontSize: 15,
                                    color: Colors.grey[900],
                                  ),
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(height: 10),
                      // Add clickable UN SDG 13 link
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: GestureDetector(
                          onTap: () async {
                            final url = Uri.parse('https://sdgs.un.org/goals/goal13');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url, mode: LaunchMode.externalApplication);
                            }
                          },
                          child: Text(
                            "🌐 Visit the official UN SDG 13 page",
                            style: GoogleFonts.lexend(
                              fontSize: 16,
                              color: Colors.blue[800],
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF43A047),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            textStyle: GoogleFonts.lexend(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back),
                          label: const Text("Back"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}