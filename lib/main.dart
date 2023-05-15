import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("My App"),
        // ),
        body: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Image.asset(
            "images/mountain.jpg",
            fit: BoxFit.cover,
          )
        ),
        const TitleWidget(),
        const ButtonBarWidget(),
        const DescriptionWidget()
      ],
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: const Center(
        child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

class ButtonBarWidget extends StatelessWidget {
  const ButtonBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: null, 
            child: Column(
              children: [
                Icon(Icons.call),
                Text("Call")
              ],
            )
          ),
          TextButton(
            onPressed: null,
            child: Column(
              children: [
                Icon(Icons.route),
                Text("Route")
              ],
            ),
          ),
          TextButton(
            onPressed: null, 
            child: Column(
              children: [
                Icon(Icons.share),
                Text("Share")
              ],
            )
          )
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Oeschinen Lake Campground",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  "kandersteg, Switzerland",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              )
            ],
          ),
          const Row(
            children: [
              Icon(
                Icons.star, 
                color: Colors.amber
              ),
              Text("41")
            ],
          )
        ],
      ),
    );
  }
}

