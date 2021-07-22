import 'package:cryptospace/models/crypto.dart';
import 'package:cryptospace/utilities/constants.dart';
import 'package:cryptospace/utilities/helpers.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Crypto crypto;

  DetailScreen({
    required this.crypto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: kGreenColor),
        title: Row(
          children: [
            getPrefixIcon(
              crypto.changePercent24Hr,
              color: kGreyColor,
            ),
            Text(
              crypto.name,
              style: TextStyle(
                color: kGreyColor,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'RANK',
                style: TextStyle(color: kGreenColor),
              ),
              subtitle: Text(
                crypto.rank.toString(),
                style: TextStyle(color: kGreyColor),
              ),
            ),
            ListTile(
              title: Text(
                'NAME',
                style: TextStyle(color: kGreenColor),
              ),
              subtitle: Text(
                crypto.name,
                style: TextStyle(color: kGreyColor),
              ),
            ),
            ListTile(
              title: Text(
                'SYMBOL',
                style: TextStyle(color: kGreenColor),
              ),
              subtitle: Text(
                crypto.symbol,
                style: TextStyle(color: kGreyColor),
              ),
            ),
            ListTile(
              title: Text(
                'PRICE',
                style: TextStyle(color: kGreenColor),
              ),
              subtitle: Text(
                "${crypto.priceUsd.toStringAsFixed(2)} USD",
                style: TextStyle(color: kGreyColor),
              ),
            ),
            ListTile(
              title: Text(
                'PERCENT CHANGE (24hr)',
                style: TextStyle(color: kGreenColor),
              ),
              subtitle: Text(
                "${crypto.changePercent24Hr.toStringAsFixed(2)}%",
                style: TextStyle(color: kGreyColor),
              ),
            ),
            ListTile(
              title: Text(
                'MARKET CAP',
                style: TextStyle(color: kGreenColor),
              ),
              subtitle: Text(
                "${crypto.marketCapUsd.toStringAsFixed(2)} USD",
                style: TextStyle(color: kGreyColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
