import "package:flutter/material.dart";

const String FIRST_IMAGE =
    "https://s2-ge.glbimg.com/ljh1XSxw9I1EcHEiQRSkmdnIPU8=/0x0:5533x3653/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2023/s/D/eDqRjJQJGWzIbHSF1vYw/2023-07-26t124402z-1839464198-up1ej7q0zdb76-rtrmadp-3-soccer-friendly-tot-lcs-report-1-.jpg";
const String SECOND_IMAGE =
    "https://aventurasnahistoria.uol.com.br/media/uploads/personagem/design_sem_nome_-_2021-03-17t163917.929.jpg";

class AniamtedCrossScreen extends StatefulWidget {
  const AniamtedCrossScreen({super.key});

  @override
  State<AniamtedCrossScreen> createState() => _AniamtedCrossScreenState();
}

class _AniamtedCrossScreenState extends State<AniamtedCrossScreen> {
  bool showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedCrossFade"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  showFirst = !showFirst;
                });
              },
              icon: Icon(Icons.play_arrow))
        ],
      ),
      body: AnimatedCrossFade(
        firstChild: ElevatedButton(
          child: Text("Clique aqui"),
          onPressed: () {
            setState(() {
              showFirst = !showFirst;
            });
          },
        ), //Image.network(FIRST_IMAGE, fit: BoxFit.cover),
        secondChild: Container(
          height: 300,
          width: 300,
          color: Colors.red,
        ), //Image.network(SECOND_IMAGE, fit: BoxFit.cover,),
        duration: Duration(milliseconds: 500),
        crossFadeState:
            (showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond),
      ),
    );
  }
}
