import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('My Id Card', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() => level += 1
          )
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add, color: Colors.grey[400]),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.5,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Asitha Lakshan',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.5,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Occupation',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.5,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Software Developer',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.5,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Score',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.5,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.5,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10),
            Row( 
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10,),
                Text(
                  'asitha@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row( 
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10,),
                Text(
                  '+94 77 2553 372',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
