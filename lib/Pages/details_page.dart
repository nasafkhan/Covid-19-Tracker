import 'package:flutter/material.dart';
import 'package:covid19_tracker/Widgets/custom_app_bar.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:covid19_tracker/Widgets/stats_screen.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF473F97),
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          Text(
            'Statistics',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 23.0,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: 20.0),
          DefaultTabController(
            length: 2,
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius:
                    BorderRadiusDirectional.all(Radius.circular(25.0)),
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BubbleTabIndicator(
                  indicatorHeight: 40.0,
                  indicatorColor: Colors.white,
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                ),
                labelColor: Color(0xFF473F97),
                unselectedLabelColor: Colors.white,
                tabs: [
                  Text(
                    'My Country',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                  Text(
                    'Global',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
                onTap: (index) {},
              ),
            ),
          ),
          SizedBox(height: 20.0),
          DefaultTabController(
            length: 3,
            child: TabBar(
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              tabs: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),
                ),
                Text(
                  'Today',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),
                ),
                Text(
                  'Yesterday',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
              onTap: (index) {},
            ),
          ),
          SizedBox(height: 20.0),
          Stats(),
        ]),
      ),
    );
  }
}
