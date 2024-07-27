import 'package:flutter/cupertino.dart';

class Apptext extends StatelessWidget {
  final String?data;
  final double?fontsize;
  final fontweight;
  final color;
  final TextAlign?align;

  const Apptext({super.key, this.data, this.fontsize, this.fontweight, this.color, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(
      data.toString(),
      textAlign: align,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: fontweight,
        fontFamily: "Roboto"

      ),
    );
  }
}
