import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            // place the focal purple toward the top-left like the reference
            center: Alignment(-0.9, -0.9),
            radius: 3.0,
            focal: Alignment(-0.6, -0.6),
            focalRadius: 0.1,
            colors: [
              Color(0xFFE8D4F1), // soft purple at the center/focal
              Color(0xFFF6EDE6), // gentle mid tone for smoother blend
              Color(0xFFFAF5ED), // cream at the edges
            ],
            stops: [0.0, 0.45, 1.0],
          ),
        ),
         child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // IMAGE TITLE
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    'assets/images/adjust_logo.png',
                    width: 800,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),

                // Tagline
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    '"A website for gender detection, mitigation and awareness"',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24, // Reduced from 64 for better scaling
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF280647),
                      height: 1.5,
                    ),
                  ),
                ),
                SizedBox(height: 25),


                // Buttons Container
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            child: _ActionButton(
                              label: 'DETECT',
                              onPressed: () {
                                // Navigate to detect page
                              },
                            ),
                          ),
                          SizedBox(width: 24),
                          SizedBox(
                            width: 300,
                            child: _ActionButton(
                              label: 'DASHBOARD',
                              onPressed: () {
                                // Navigate to dashboard page
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: SizedBox(
                          width: 300,
                          child: _ActionButton(
                            label: 'ABOUT',
                            onPressed: () {
                              // Navigate to about page
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const _ActionButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFD4B5E8),
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
            color: Color(0xFF280647),
            width: 2.5,
          ),
        ),
        elevation: 4,
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: Color(0xFF280647),
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}

