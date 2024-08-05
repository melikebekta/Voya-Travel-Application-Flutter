import 'package:flutter/material.dart';
import 'package:voya/Screen/Main.dart';
import 'package:voya/Utils/Color.dart';
import 'package:voya/Widgets/Topbar_Widget.dart';
import 'package:voya/Widgets/Slider_Widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final List<String> items = ["Lokasyon", "Otel", "Yemek", "Alışveriş", "Gece Hayatı", "Müze", "Park", "Kafe", "Plaj", "Etkinlik"];
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: Column(
        children: [
          SearchBar(),
          Expanded(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: items.asMap().entries.map((entry) {
                      int index = entry.key;
                      String item = entry.value;
                      bool isSelected = index == _selectedIndex;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color:  isSelected ? ColorC.sbuton : ColorC.nul,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            item,
                            style: TextStyle( color: isSelected ? ColorC.buton : ColorC.sctext,),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0,),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Popüler',
                      style: TextStyle(
                        fontFamily: 'SinkinSans',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SliderScreen(),
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}


class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: ColorC.sbuton,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Image.asset(
            'assets/image/search.png',
            width: 20,
          ),
          hintText: 'Arama yapmak için tıklayınız',
          hintStyle: TextStyle(color: ColorC.ltext),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
