import 'package:flutter/material.dart';

void main() {
  runApp(const Week9());
}

class Week9 extends StatelessWidget {
  const Week9();

  @override
  Widget build(BuildContext context) {
    List images = ['images/img1.jpg', 'images/img2.jpg','images/img3.jpg'];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Center(
                child: Container(
                    height: 35,
                    child: const Text(
                      "Gallery",
                      style: TextStyle(fontSize: 26,color: Colors.black54),
                    )),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0,right:18.0 ),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 18,
                      crossAxisSpacing: 18),
                  children: List.generate(images.length*10, (index) {
                    return Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            images[index % images.length],
                          ),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
