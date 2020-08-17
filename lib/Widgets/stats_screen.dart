import 'package:flutter/material.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 400.0,
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                buildStatCard('Affected', '26,47,663', Colors.orange),
                buildStatCard('Death', '50,921', Colors.red),
              ],
            ),
          ),
          Flexible(
              child: Row(
            children: [
              buildStatCard('Recoverd', '19,19,842', Colors.green),
              buildStatCard('Active', '6,76,900', Colors.lightBlue),
            ],
          ))
        ],
      ),
    );
  }
}

Expanded buildStatCard(String title, String count, MaterialColor color) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w600),
          ),
          Text(
            count,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}
