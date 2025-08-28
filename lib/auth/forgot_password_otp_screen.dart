import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'reset_password_screen.dart';

class ForgotPasswordOTPScreen extends StatefulWidget {
  const ForgotPasswordOTPScreen({super.key});

  @override
  State<ForgotPasswordOTPScreen> createState() =>
      _ForgotPasswordOTPScreenState();
}

class _ForgotPasswordOTPScreenState extends State<ForgotPasswordOTPScreen> {
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Image.asset("assets/splash_logo.png", height: 130),
              const SizedBox(height: 30),

              Text(
                "Enter OTP",
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),
              ),
              const SizedBox(height: 8),
              Text(
                "We have sent an OTP to your email",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 32),

              TextField(
                controller: _otpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter OTP",
                  prefixIcon: const Icon(Icons.lock_clock_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Verify OTP API
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ResetPasswordScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: const Color(0xFF0A4973),
                  ),
                  child: Text("Verify OTP",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
