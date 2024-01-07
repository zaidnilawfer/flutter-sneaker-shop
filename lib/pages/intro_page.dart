import 'package:flutter/material.dart';
import 'package:sneaker/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 30),
              child: Image.asset(
                'lib/images/pumaLogo.png',
                height: 240,
              ),
            ),
            const SizedBox(height: 10),
            const Text('What  real men wear',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            const Text(
              'Brand new sneakers and custom kicks made with premium quality.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            SizedBox(
              width: 300,
              height: 70,
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(9),
                    ),
                    padding: EdgeInsets.all(25),
                    child: const Center(
                      child: const Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
