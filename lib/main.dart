import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF6A1B9A),
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.white),
        actions: [Icon(Icons.add, color: Colors.white), SizedBox(width: 10)],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6A1B9A), // Ungu tua
              Color(0xFF8E24AA), // Ungu terang
              Color(0xFFBA68C8), // Ungu pastel
            ],
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Yogyakarta",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Today",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color.fromARGB(255, 255, 224, 224),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "28°C",
              style: GoogleFonts.poppins(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 218, 198, 224),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 200, 
              height: 2, 
              color: Colors.white, 
            ),
            SizedBox(height: 10),
            Text(
              "Sunny",
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: const Color.fromARGB(255, 236, 226, 226),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "❄️ 5 km/h",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromARGB(111, 183, 134, 197),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "Next 7 days",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(240, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      weatherColumn("Now"),
                      weatherColumn("16.00"),
                      weatherColumn("18.00"),
                      weatherColumn("20.00"),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              "Developed by: Rosihan Syahlan Syahputra",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget weatherColumn(String time) {
    return Column(
      children: [
        Text(
          time,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        SizedBox(height: 10),
        Text("❄️", style: TextStyle(fontSize: 18)),
        SizedBox(height: 10),
        Text(
          "30°C",
          style: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
        ),
        SizedBox(height: 10),
        Text("💨", style: TextStyle(fontSize: 18)),
        SizedBox(height: 10),
        Text(
          "20 km/h",
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        SizedBox(height: 10),
        Text("☂️", style: TextStyle(fontSize: 18)),
        SizedBox(height: 10),
        Text(
          " 0%",
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ],
    );
  }
}
