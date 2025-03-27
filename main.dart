import 'registered_screen.dart'; // Ensure this is imported
import 'storage_screen.dart'; // Ensure this is imported
import 'calculator.dart';
import 'gradebook.dart';
import 'name.dart';
import 'input_page.dart';
import 'print.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/BGNU_logo.png', height: 40),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Baba Guru Nanak University",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Nankana Sahib",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/BGNU_logo.png', height: 60),
                  SizedBox(height: 10),
                  Text(
                    "BGNU Navigation",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text("Calculator"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.grade),
              title: Text("Grade Book"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GradeBookPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Name"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NamePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.input),
              title: Text("Input Page"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.print),
              title: Text("Print Page"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrintPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Registered Users"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisteredScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.storage),
              title: Text("Storage"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StorageScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Welcome to BGNU App",
          style: TextStyle(fontSize: 18),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "© 2025 BGNU. Nankana Sahib.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
