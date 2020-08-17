import 'package:flutter/material.dart';

class CountriesDropDown extends StatelessWidget {
  List<String> countries;
  String country;
  Function(String) onChanged;
  CountriesDropDown({this.countries, this.country, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            value: country,
            items: countries
                .map((e) => DropdownMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/${e.toLowerCase()}_flag.png'),
                            radius: 12.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            e,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      value: e,
                    ))
                .toList(),
            onChanged: onChanged),
      ),
    );
  }
}
