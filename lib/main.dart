import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime yesterday = now.subtract(const Duration(days: 1));
    String formattedDate = DateFormat('EEEE').format(yesterday);
    String formattedTime = DateFormat('HH:mm').format(now);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Notification',
          style: GoogleFonts.roboto(),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Mark all as read',
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
            onPressed: () {
              // Implement the functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 16, right: 20, left: 20, bottom: 0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 249, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset('assets/image/icon1.png'),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 63, 63, 63),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Nama Aplikasi • $formattedDate, $formattedTime',
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 112, 112, 112),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 16, right: 20, left: 20, bottom: 0),
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 249, 255, 255)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset('assets/image/icon2.png'),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 63, 63, 63),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Nama Aplikasi • $formattedDate, $formattedTime',
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 112, 112, 112),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 16, right: 20, left: 20, bottom: 0),
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 249, 255, 255)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset('assets/image/icon3.png'),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 63, 63, 63),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Nama Aplikasi • $formattedDate, $formattedTime',
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 112, 112, 112),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
