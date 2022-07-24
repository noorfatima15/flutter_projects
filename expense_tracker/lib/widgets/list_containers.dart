import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class ListContainers extends StatefulWidget {
  final String header_text;

  ListContainers({Key? key, required this.header_text}) : super(key: key);

  @override
  State<ListContainers> createState() => _ListContainersState();
}

class _ListContainersState extends State<ListContainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            // SizedBox(height: 5),

            SizedBox(height: 10),

            // List_Tile(
            //     // image_url:
            //     //     'https://thumbs.dreamstime.com/b/heart-wallet-line-fill-style-icon-vector-design-charity-donation-theme-illustration-194527752.jpg',
            //     tile_text: 'PhonePE CashBack',
            //     tile_price: '₹42'),
            // List_Tile(
            //     // image_url:
            //     //     'https://thumbs.dreamstime.com/b/heart-wallet-line-fill-style-icon-vector-design-charity-donation-theme-illustration-194527752.jpg',
            //     tile_text: 'PhonePE CashBack',
            //     tile_price: '₹42'),
            // List_Tile(
            //     // image_url:
            //     //     'https://thumbs.dreamstime.com/b/heart-wallet-line-fill-style-icon-vector-design-charity-donation-theme-illustration-194527752.jpg',
            //     tile_text: 'PhonePE CashBack',
            //     tile_price: '₹42'),
          ],
        ),
      ),
    );
  }
}
