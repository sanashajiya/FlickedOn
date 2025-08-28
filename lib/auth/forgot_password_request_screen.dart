import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'forgot_password_otp_screen.dart';

class ForgotPasswordRequestScreen extends StatefulWidget {
  const ForgotPasswordRequestScreen({super.key});

  @override
  State<ForgotPasswordRequestScreen> createState() =>
      _ForgotPasswordRequestScreenState();
}

class _ForgotPasswordRequestScreenState
    extends State<ForgotPasswordRequestScreen> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/splash_logo.png", height: 130),
              const SizedBox(height: 30),

              Text(
                "Forgot Password?",
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),
              ),
              const SizedBox(height: 8),
              Text(
                "Enter your registered email to receive an OTP",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 32),

              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.email_outlined),
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
                    // TODO: Send OTP API
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ForgotPasswordOTPScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: const Color(0xFF0A4973),
                  ),
                  child: Text("Send OTP",
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
