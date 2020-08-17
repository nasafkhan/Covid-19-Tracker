import 'package:flutter/material.dart';
import 'package:covid19_tracker/Widgets/custom_app_bar.dart';
import 'package:covid19_tracker/Widgets/countries_dropdown_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _country = 'Select';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      //Upper Container Starts
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF473F97),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45.0),
                    bottomRight: Radius.circular(45.0)),
              ),
              height: MediaQuery.of(context).size.height - 420.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Covid-19',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        CountriesDropDown(
                          countries: [
                            'Select',
                            'CN',
                            'FR',
                            'IN',
                            'IT',
                            'UK',
                            'USA'
                          ],
                          country: _country,
                          onChanged: (val) => setState(() => _country = val),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 62.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Are you feeling sick?',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'If you feel sick with any of Covid-19 symptoms\nplease call or sms us for help.',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 14.0,
                              letterSpacing: 1.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50.0,
                            width: 160.0,
                            decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.call),
                                    color: Colors.white,
                                    onPressed: () {}),
                                Text(
                                  'Call Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 50.0,
                            width: 160.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(25.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.sms),
                                    color: Colors.white,
                                    onPressed: () {}),
                                Text(
                                  'Send SMS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            ),
            //Upper Container Ends
            SizedBox(height: 10.0),
            //Lower Container Starts
            Container(
              // color: Colors.amber,
              height: MediaQuery.of(context).size.height - 500.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Prevention',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF473F97),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/distance.png'),
                              radius: 35.0,
                            ),
                            Text(
                              'Avoid close\ncontact',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF473F97),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/wash_hands.png'),
                              radius: 35.0,
                            ),
                            Text(
                              'Clean your\nhands often',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF473F97),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/mask.png'),
                              radius: 35.0,
                            ),
                            Text(
                              'Wear a\nface mask',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF473F97)),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              height: 100.0,
              width: 340.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFAD9FE4), Color(0xFF473F97)],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/own_test.png'),
                  Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: Text(
                          'Do your own test!',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Follow your instructions\nto do your own test.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
