import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter layout: Gempita - 244107060083',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/labuanBajo.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Labuan Bajo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'Flores, Nusa Tenggara Timur, Indonesia',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      const Icon(
        Icons.star,
        color: Colors.red,
      ),
      const Text('45'),
    ],
  ),
);

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    buildButtonColumn(Icons.call, 'CALL'),
    buildButtonColumn(Icons.near_me, 'ROUTE'),
    buildButtonColumn(Icons.share, 'SHARE'),
  ],
);

Column buildButtonColumn(IconData icon, String label) {
  const Color color = Colors.blue;

  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Labuan Bajo adalah destinasi wisata yang terletak di Nusa Tenggara Timur dan dikenal sebagai gerbang menuju Taman Nasional Komodo. '
    'Tempat ini menawarkan keindahan laut yang jernih, pulau-pulau eksotis, serta pemandangan sunset yang sangat indah. '
    'Wisatawan juga dapat menikmati berbagai aktivitas seperti snorkeling, diving, dan island hopping di sekitar pulau-pulau kecil yang menakjubkan.',
    softWrap: true,
  ),
);