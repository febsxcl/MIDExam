import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us '),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),

              // Profile picture
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                  child: ClipOval(
                      child: Image.network('https://media.licdn.com/dms/image/C560BAQFFiR2IYmFM8A/company-logo_200_200/0/1607082150098?e=2147483647&v=beta&t=qt02ltiO6tRAyCWqWB0eQcK1sC186hOtRqNLw4rrPE0')
                  )
              ),
              SizedBox(height: 25),

              // Name and title
              Text('Global Reciprocal College', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87)),
              SizedBox(height: 8),

              // About me card
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About Us', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                    SizedBox(height: 15),
                    Text(
                      'Global Reciprocal Colleges (GRC) is an educational institution that aims to provide affordable education through a system of reciprocation, allowing students to change their lives with accessible tuition fees and scholarship grants. They offer a full range of bachelor\'s degree courses in various fields, including business administration and accountancy. Recently, GRC hosted a Sports Festival, showcasing the athletic abilities of students from various colleges within the organization. The college is committed to developing informed and dedicated professionals to contribute positively to society.',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.6),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}