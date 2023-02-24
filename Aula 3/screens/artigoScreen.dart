import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula3/widgets/articleScreenDelegate.dart';

class ArtigoScreen extends StatefulWidget {
  const ArtigoScreen({Key? key}) : super(key: key);

  @override
  State<ArtigoScreen> createState() => _ArtigoScreenState();
}

class _ArtigoScreenState extends State<ArtigoScreen> {
  int _proporcao = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Artigo"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  this._proporcao++;
                });
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                setState(() {
                  this._proporcao--;
                });
              },
              icon: Icon(Icons.remove))
        ],
      ),
      body: CustomMultiChildLayout(
        delegate: ArticleScreenDelegate(this._proporcao),
        children: [
          LayoutId(id: 1, child: Container(
            color: Colors.black12,
          )),
          LayoutId(id: 2, child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500),
            child: Text("dh kjdhbsajhd ajshfjsahfajshfajsb kjasbfkjlsabfkjsabfhljabskjfabshjlfbvjsab mnsfhkjzjasnbfasjb ohuyfvbslkb flhjaoiuasnçkjlfsb"),
          ))
        ],
      ),
    );
  }
}
