import 'package:flutter/material.dart';

class TypographyScreen extends StatelessWidget {
  const TypographyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TypographyData> typographyList = [
      //Display
      TypographyData(title: "Display Large", textStyle: Theme.of(context).textTheme.displayLarge),
      TypographyData(title: "Display Medium", textStyle: Theme.of(context).textTheme.displayMedium),
      TypographyData(title: "Display Small", textStyle: Theme.of(context).textTheme.displaySmall),
      //Headline
      TypographyData(title: "Headline Large", textStyle: Theme.of(context).textTheme.headlineLarge),
      TypographyData(title: "Headline Medium", textStyle: Theme.of(context).textTheme.headlineMedium),
      TypographyData(title: "Headline Small", textStyle: Theme.of(context).textTheme.headlineSmall),
      //Title
      TypographyData(title: "Title Large", textStyle: Theme.of(context).textTheme.titleLarge),
      TypographyData(title: "Title Medium", textStyle: Theme.of(context).textTheme.titleMedium),
      TypographyData(title: "Title Small", textStyle: Theme.of(context).textTheme.titleSmall),
      //Label
      TypographyData(title: "Label Large", textStyle: Theme.of(context).textTheme.labelLarge),
      TypographyData(title: "Label Medium", textStyle: Theme.of(context).textTheme.labelMedium),
      TypographyData(title: "Label Small", textStyle: Theme.of(context).textTheme.labelSmall),
      //Body
      TypographyData(title: "Body Large", textStyle: Theme.of(context).textTheme.bodyLarge),
      TypographyData(title: "Body Medium", textStyle: Theme.of(context).textTheme.bodyMedium),
      TypographyData(title: "Body Small", textStyle: Theme.of(context).textTheme.bodySmall),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Typography")),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...typographyList.map((typo) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(typo.title, style: typo.textStyle),
                    Wrap(
                      children: [
                        Chip(
                          avatar: const Icon(Icons.font_download),
                          label: Text("${typo.textStyle?.fontWeight?.toString()}"),
                        ),
                        const SizedBox(width: 10),
                        Chip(
                          avatar: const Icon(Icons.text_fields),
                          label: Text("${typo.textStyle?.fontSize}"),
                        ),
                        const SizedBox(width: 10),
                        Chip(
                          avatar: const Icon(Icons.height),
                          label: Text("${typo.textStyle?.height}"),
                        ),
                        const SizedBox(width: 10),
                        Chip(
                          avatar: const Icon(Icons.space_bar),
                          label: Text("${typo.textStyle?.letterSpacing}"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class TypographyData {
  String title;
  TextStyle? textStyle;

  TypographyData({required this.title, this.textStyle});
}
