import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.yellow,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tourist Destinations"),
          leading: const Icon(FontAwesomeIcons.umbrellaBeach),
        ),
        floatingActionButton: const MyTheme(),
        body: ListView(
          children: const [
            Header(),
            SizedBox(
              height: 50,
            ),
            TouristAttraction(
                name: "Taj Mahal", path: "assets/attractions/taj mahal.jpg"),
            TouristAttraction(
                name: "Chichen Itza",
                path: "assets/attractions/chichen itza.jpg"),
            TouristAttraction(
                name: "London Bridge",
                path: "assets/attractions/london bridge.jpg"),
          ],
        ),
      ),
    );
  }
}

class TouristAttraction extends StatelessWidget {
  const TouristAttraction({
    super.key,
    required this.path,
    required this.name,
  });
  final String name;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(path),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(child: Image.asset("assets/tourism clipart.jpg")),
              Expanded(
                child: Center(
                  child: Text(
                    "Travel with us!",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTheme extends StatelessWidget {
  const MyTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      // Create a unique theme with `ThemeData`
      data: ThemeData(
        splashColor: Colors.yellow,
      ),
      child: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
