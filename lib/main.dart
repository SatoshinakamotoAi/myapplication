import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Advanced Widgets Lab',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Advanced Widgets"),
          backgroundColor: Colors.blueGrey,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              containerExample(),
              listViewExample(),
              gridViewExample(),
              stackExample(),
            ],
          ),
        ),
      ),
    );
  }

  Widget containerExample() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        "sample text",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  Widget listViewExample() {
    List<String> subjects = [
      "Programming",
      "Networking",
      "Database",
      "Web Development",
      "Mobile Development"
    ];

    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.book),
            title: Text(subjects[index]),
          );
        },
      ),
    );
  }

  Widget gridViewExample() {
    return SizedBox(
      height: 150,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            // ignore: unnecessary_const
            color: const Color.fromARGB(255, 0, 255, 247),
            child: Center(
              child: Text(
                "Item ${index + 1}",
                style: const TextStyle(fontSize: 20,color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget stackExample() {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [

          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey,
          ),
          Positioned(
            top: 20,
            left: 20,
            child: const Text(
              "Stack Example",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}