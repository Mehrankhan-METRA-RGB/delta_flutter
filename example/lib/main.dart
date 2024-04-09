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

    //   DeltaApp(
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   builder: (BuildContext context, Widget? child) =>
    // );
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
    print(DateTime.now());
    DateTime date = DateTime.now().subtract(const Duration(days: 30));
    print(date);

    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Item(
            //   title: '90 meterToLightMinute',
            //   subTitle: "${Delta.data.length.centimeterToInch(90)}",
            // ),

            Item(
              title: 'Country Area',
              subTitle: "pakistan".countryDetail.area.toString(),
            ),

            Item(
              title: 'Country altSpellings',
              subTitle: "pakistan".countryDetail.altSpellings.toString(),
            ),
            Item(
              title: 'Country Cities',
              subTitle: "pakistan".countryDetail.cities.toString(),
            ),

            Item(
              title: 'Country Population',
              subTitle: "pakistan".countryDetail.population.toString(),
            ),

            Item(
              title: 'Country Dial Code',
              subTitle: "pakistan".countryDetail.callingCodes.toString(),
            ),

            Item(
              title: 'Country Currencies',
              subTitle: "pakistan"
                  .countryDetail
                  .currencies!
                  .map((e) => e.toRawJson())
                  .toString(),
            ),
            Item(
              title: 'Country Name',
              subTitle: "pakistan".countryDetail.name!,
            ),

            ///Sized box with adaptive height of 30 dp
            30.height,

            const Divider(),
            // Item(
            //   title: 'Numeral Counts Formats',
            //   titleStyle: Delta.data.textTheme.headlineSmall,
            //   subTitle: " ",
            // ),
            const Divider(),
            Item(
              title: 'longIndianNumeral',
              subTitle: "2390900977:${2390900977.longIndianNumeral}",
            ),

            Item(
              title: 'longSINumeral',
              subTitle: "2390051100:${2390051100.longSINumeral}",
            ),

            Item(
              title: 'shortSINumeral',
              subTitle: "2390000000:${2390000000.shortSINumeral}",
            ),
            Item(
              title: 'shortSINumeral',
              subTitle: "2390000000:${2390000000.shortSINumeral}",
            ),

            ///Sized box with adaptive height of 30 dp
            30.height,

            const Divider(),
            // Item(
            //   title: 'DATE TIME FORMATS',
            //   titleStyle: Delta.data.textTheme.headlineSmall,
            //   subTitle: " ",
            // ),
            const Divider(),
            Item(
              title: 'firebase',
              subTitle: date.firebase,
            ),
            Item(
              title: 'hmAndSeconds',
              subTitle: date.hmAndSeconds,
            ),
            Item(
              title: 'iso801',
              subTitle: date.iso801,
            ),
            Item(
              title: 'isLeapYear',
              subTitle: "$date is leapYear: ${date.isLeapYear}",
            ),
            Item(
              title: 'macOSDateTime',
              subTitle: date.macOSDateTime,
            ),
            Item(
              title: 'dayTimeName',
              subTitle: date.dayTimeName,
            ),
            Item(
              title: 'shortUSDateTime',
              subTitle: date.shortUSDateTime,
            ),
            Item(
              title: 'emailDate',
              subTitle: date.emailDate,
            ),
            Item(
              title: 'SHMMDY',
              subTitle: date.SHMMDY,
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
  const Item(
      {required this.title,
      this.titleStyle,
      required this.subTitle,
      super.key});
  final String title;
  final String subTitle;
  final TextStyle? titleStyle;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ListTile(
      title: Text(
        title,
        style: titleStyle ?? theme.textTheme.titleLarge,
      ),
      subtitle: SelectableText(
        subTitle,
        style: theme.textTheme.bodyLarge,
      ),
    );
  }
}
