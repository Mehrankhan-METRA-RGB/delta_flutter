import 'package:delta/Extensions/Countries/countries_extension.dart';
import 'package:delta/Extensions/Counts/counts_extension.dart';
import 'package:delta/delta.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Delta',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Delta  '),
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
    DateTime date = DateTime.now().subtract(const Duration(days: 30));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Item(
              title: 'Value',
              subTitle: (23218000000000).longIndianNumeral,
            ),
            Item(
              title: 'Facebook Date',
              subTitle: date.ABSOLUTE_FB,
            ),
            Item(
              title: 'Day at Hour:Minutes:Seconds',
              subTitle: date.DHMS,
            ),
            Item(
              title: 'Firebase',
              subTitle: date.firebase,
            ),
            Item(
              title: 'Pakistani',
              subTitle: date.DMY,
            ),
            Item(
              title: 'Slash Pakistani',
              subTitle: date.slash_DMY,
            ),
            Item(
              title: 'Population',
              subTitle:
                  "pakistan".countryDetail.population?.longIndianNumeral ??
                      'not found',
            ),
            Item(
              title: 'Currency Name',
              subTitle:
                  "pakistan".countryDetail.currencies![0].name ?? 'not found',
            ),
            Item(
              title: 'Currency Cities',
              subTitle: "pakistan".countryDetail.cities.toString(),
            ),
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({required this.title, required this.subTitle, super.key});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
      ),
      subtitle: SelectableText(
        subTitle,
      ),
    );
  }
}
