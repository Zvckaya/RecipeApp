import 'package:flutter/material.dart';
import 'package:recipes/recipe_detail.dart';
import 'recipe_model.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 72, 0, 113)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Recipe Calculator '),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RecipeDetail(recipe: Recipe.samples[index]);
                  }));
                },
                child: buildRecipeCard(Recipe.samples[index]));
          }),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Image.asset(recipe.imageUrl),
            const SizedBox(
              height: 10,
            ),
            Text(recipe.label),
          ],
        ),
      ),
    );
  }
}
