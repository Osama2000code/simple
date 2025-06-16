import 'package:flutter/material.dart';
import 'package:simpli_app/pages/coffeeHomePage.dart';

class LoeadingPage extends StatefulWidget {
  const LoeadingPage({
    super.key,
  });

  @override
  State<LoeadingPage> createState() => _LoeadingPageState();
}

class _LoeadingPageState extends State<LoeadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 2, 2),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/coffie.png",
              fit: BoxFit.cover,
            ),
            const Text(
              "This is main data to Change Text  Style This is main data to Change Text  Style",
              style: TextStyle(
                fontSize: 26,
                wordSpacing: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const coffeeHomePage(),
                    ));
                print("object");
              }),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 180,
                    vertical: 15,
                  )),
              child: const Text("Get Start"),
            ),
            const SizedBox(
              height: 90,
            )
          ],
        ),
      ),
    );
  }
}
