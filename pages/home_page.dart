import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Main welcome icon
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                ),

                child: ClipOval(
                  child: Image.network('https://media.licdn.com/dms/image/C560BAQFFiR2IYmFM8A/company-logo_200_200/0/1607082150098?e=2147483647&v=beta&t=qt02ltiO6tRAyCWqWB0eQcK1sC186hOtRqNLw4rrPE0')
                )
              ),
              SizedBox(height: 30),

              // Welcome title
              Text(
                'Welcome to Global Reciprocal College!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),

              // Subtitle
              Text(
                'Come and enroll to Global Reciprocal College!!',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Quick navigation cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildQuickNavCard(Icons.person, 'CCS', Colors.grey),
                  _buildQuickNavCard(Icons.person, 'EDUC', Colors.blue),
                  _buildQuickNavCard(Icons.person, 'COA', Colors.red),
                  _buildQuickNavCard(Icons.person, 'CBAE', Colors.yellow),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuickNavCard(IconData icon, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: color),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }
}