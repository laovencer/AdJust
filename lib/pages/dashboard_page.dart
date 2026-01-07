import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ResponsiveNavigationBar(currentPage: 'dashboard'),
          Expanded(
            child: Container(
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
            ),
          ),
        ],
      ),
    );
  }
}
