import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        //TODO: Replace child: Container()
        // 4

        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            // 7
            // TODO: Add GedtureDetector
            return GestureDetector(
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      // TODO: Replace return with return RecipeDettail()
                      return Text('Detail Page');
                    },
                  ),
                );
              },
            );
          },
          // 11
          child: buildRecipeCard(Recipe.samples[index]),
        ),
      ),
    );
  }

  // TODO: Add buildRecipeCard() here
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
        // 1
        elevation: 2.0,
        // 2
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        // 3
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage(recipe.imageUrl)),
              // 5
              const SizedBox(
                height: 14.0,
              ),
              // 6

              Text(
                recipe.label,
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Paltino'),
              ),
            ],
          ),
        ));
  }
}
