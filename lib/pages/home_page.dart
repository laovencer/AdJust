import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // LOGO
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    'assets/images/adjust_logo.png',
                    width: 800,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),

                // TAGLINE
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    '"A website for gender detection, mitigation and awareness"',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      color: const Color(0xFF280647),
                      height: 1.5,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // BUTTONS
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
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
                                Navigator.pushNamed(context, '/detection');
                              },
                            ),
                          ),
                          const SizedBox(width: 24),
                          SizedBox(
                            width: 300,
                            child: _ActionButton(
                              label: 'DASHBOARD',
                              onPressed: () {
                                Navigator.pushNamed(context, '/dashboard');
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 300,
                        child: _ActionButton(
                          label: 'ABOUT',
                          onPressed: () {
                            Navigator.pushNamed(context, '/about');
                          },
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
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 16),
        ),
        elevation: MaterialStateProperty.all(4),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.hovered)
              ? const Color(0xFF3A0E52)
              : const Color(0xFFD4B5E8),
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.hovered)
              ? const Color(0xFFD4B5E8)
              : const Color(0xFF280647),
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: states.contains(MaterialState.hovered)
                  ? const Color(0xFFD4B5E8)
                  : const Color(0xFF280647),
              width: 2.5,
            ),
          ),
        ),
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
