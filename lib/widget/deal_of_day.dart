import 'package:flutter/material.dart';

class DealOfDayWidget extends StatefulWidget {
  DealOfDayWidget(this.resim, this.yazi, this.indirim);

  String resim;
  String yazi;
  String indirim;

  @override
  State<DealOfDayWidget> createState() => _DealOfDayWidgetState();
}

class _DealOfDayWidgetState extends State<DealOfDayWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 200,
        child: Column(
          children: [
            Image.asset("varliklar/${widget.resim}.png"),
            Text(widget.yazi),
            Container(
              color: Colors.red,
              child: Text(
                widget.indirim,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
