import 'package:flutter/material.dart';

class HotSellingWidget extends StatefulWidget {


  HotSellingWidget(
      {required this.resimAdi,
        required this.urunAdi,
        required this.urunFiyati,
        required this.indirimsizFiyati,
        required this.yapilanIndirim});
  String resimAdi = "urun1.jpg";
  String urunAdi = "Adidas white sneakers for men";
  double urunFiyati = 68;
  double indirimsizFiyati = 136;
  String yapilanIndirim = "50% OFF";

  @override
  State<HotSellingWidget> createState() => _HotSellingWidgetState();
}

class _HotSellingWidgetState extends State<HotSellingWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("varliklar/${widget.resimAdi}", height: 140,),
          Text(widget.urunAdi),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("\$${widget.urunFiyati} ",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\$${widget.indirimsizFiyati} ",style:TextStyle(decoration: TextDecoration.lineThrough),),
              Text("${widget.yapilanIndirim}",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }
}
