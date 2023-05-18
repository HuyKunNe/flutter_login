import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(".appable/"),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_shopping_cart),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text(
                "Heading",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text("Sub-heading", style: Theme.of(context).textTheme.subtitle2),
              Text(
                "Paragraph",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Elevated Button")),
              OutlinedButton(
                  onPressed: () {}, child: const Text("Outlined Button")),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Image(image: AssetImage("assets/images/book.jpg")),
              )
            ],
          )),
    );
  }
}
  