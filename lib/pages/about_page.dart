import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/custom_scrollbar.dart'; 

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ResponsiveNavigationBar(currentPage: 'about'),
          Expanded(
            child: Container(
              width: double.infinity,
              // Background Gradient
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(-0.9, -0.9),
                  radius: 3.0,
                  focal: Alignment(-0.6, -0.6),
                  focalRadius: 0.1,
                  colors: [
                    Color(0xFFE8D4F1),
                    Color(0xFFF6EDE6),
                    Color(0xFFFAF5ED),
                  ],
                  stops: [0.0, 0.45, 1.0],
                ),
              ),
              // Custom Scrollbar with Content
              child: CustomScrollbar(
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 32.0, 200.0, 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About AdJust',
                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'AdJust is a comprehensive platform designed to...\n\n'
                          'Now that you have a reusable widget, you can use <CustomScroller> ',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 18,
                            height: 1.6,
                          ),
                        ),
                        const SizedBox(height: 500), // Spacing for testing scroll
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
