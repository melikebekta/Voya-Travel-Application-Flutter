import 'package:flutter/material.dart';
import 'package:voya/Screen/Sign_In_Screen.dart';
import 'package:voya/Utils/Color.dart';

import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          // Arka plan resmi
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          // Resim
          Positioned.fill(
            child: Image.asset(
              "assets/image/mainp1.PNG",
              fit: BoxFit.cover,
            ),
          ),
          // Metin
          Positioned(
            top: 50.0,
            left: 80.0,
            child: Text(
              'Voya',
              style: textStyleWithShadow
            ),
          ),
          Positioned(
            top: 450.0,
            left: 30.0,
            child: Text(
                'Planını\nYap',
                style: styleh2
            ),
          ),
          Positioned(
            top: 600.0,
            left: 30.0,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignIn(),
                  ),
                );
              },
              style: flatButtonStyle,
              child: Text('Başla',
                style: styleh3,
              ),
            ),
          ),

        ],
      ),
    );

  }
}
TextStyle textStyleWithShadow = TextStyle(
  color: Colors.white,
    fontSize: 130.0,
    fontFamily: 'AlexB',
  shadows: [
    Shadow(
      offset: Offset(2.0, 2.0),
      blurRadius: 3.0,
      color: Colors.black.withOpacity(0.5),
    ),
  ],
);
TextStyle styleh2 = TextStyle(
  color: Colors.white,
  fontSize: 35.0,
  fontFamily: 'RobotoM',
  shadows: [
    Shadow(
      offset: Offset(2.0, 2.0),
      blurRadius: 3.0,
      color: Colors.black.withOpacity(0.5),
    ),
  ],
);
TextStyle styleh3 = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontFamily: 'Cantarell',

);
TextStyle styleh4 = TextStyle(
  color: ColorC.buton,
  fontSize: 20.0,
  fontFamily: 'Cantarell',

);

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: ColorC.buton,
  minimumSize: const Size(350, 60),
  padding: const EdgeInsets.symmetric(horizontal: 30),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
);

final ButtonStyle flatButtonStyle1 = TextButton.styleFrom(
  backgroundColor: ColorC.buton,
  minimumSize: const Size(350, 60),
  padding: const EdgeInsets.symmetric(horizontal: 30),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
);
final ButtonStyle flatButtonStyle2 = TextButton.styleFrom(
  backgroundColor: Colors.white,
  minimumSize: const Size(350, 60),
  padding: const EdgeInsets.symmetric(horizontal: 30),
).copyWith(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      side: BorderSide(color: ColorC.buton, width: 2), // Çerçeve rengi ve kalınlığı
    ),
  ),
);


