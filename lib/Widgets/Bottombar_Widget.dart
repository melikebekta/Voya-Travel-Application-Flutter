import 'package:flutter/material.dart';
import 'package:voya/Screen/Favorites_Screen.dart';
import 'package:voya/Screen/HomePage.dart';
import 'package:voya/Screen/Profile_Screen.dart';
import 'package:voya/Screen/Ticket_Screen.dart';
import 'package:voya/Utils/Color.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0; // Seçilen indeksi takip etmek için bir değişken

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorC.buton,
      iconSize: 20,
      currentIndex: _selectedIndex, // Seçilen indeks
      onTap: (index) {
        // BottomNavigationBarItem'a tıklandığında indeksi güncelle
        setState(() {
          _selectedIndex = index;
        });

        // Tıklanan indekse göre sayfaya yönlendirme yap
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Ticket()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Favorite()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
            break;

        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/image/home.png',
            width: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/image/ticket.png',
            width: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/image/fav.png',
            width: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/image/user.png',
            width: 30,
          ),
          label: '',
        ),

      ],
    );
  }
}
