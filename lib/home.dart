import 'package:flutter/material.dart';


void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.person, size: 30, color: Colors.brown[700]),
                  Text(
                    'Mind & Mugs',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Ageo',
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      letterSpacing: 1.4,
                    ),
                  ),
                  Icon(Icons.help_outline_sharp,
                      size: 25, color: Colors.brown[400]),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Welcome,',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepOrange[800],
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 1),
              Text(
                'Hanadi Alshawesh',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.brown[900],
                  letterSpacing: 0.7,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 1),
              Center(
                child: Image.asset(
                  'assets/images/offer2.png', // This loads the image using the constant
                  width: 900, // Set the width of the image
                  height: 200,
                ),
              ),
              SizedBox(height: 13),
              // Row for 3 circles and "More" text
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle, size: 5),
                      SizedBox(width: 5),
                      Icon(Icons.circle, size: 5),
                      SizedBox(width: 5),
                      Icon(Icons.circle, size: 5),
                    ],
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NextPage()),  // intead of NextPage we will add a room page
                      );
                    },
                    child: Text(
                      'to see More',
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Simple Next Page
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Page')),
      body: Center(
        child: Text('Welcome to the Next Page!'),
      ),
    );
  }
}
