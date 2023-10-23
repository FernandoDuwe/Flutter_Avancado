import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/screens/login_screen.dart";

class HomeTestScreen extends StatefulWidget {
  const HomeTestScreen({super.key});

  @override
  State<HomeTestScreen> createState() => _HomeTestScreenState();
}

class _HomeTestScreenState extends State<HomeTestScreen> {
  List<String> itens = ["Item 1", "Item 2", "Item 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Página inicial"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(itens[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            itens.add("Item ${itens.length + 1}");
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
