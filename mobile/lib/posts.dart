import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              filled: true,
              contentPadding: const EdgeInsets.all(16),
              fillColor: const Color(0xFFF4F4F4),
              hintText: "Search",
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust the radius as needed
                borderSide: BorderSide.none, // No border line
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                right: 10.0), // Uniform horizontal padding
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  size: 32,
                )),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Recommended",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            RecommendedSlider()
          ],
        ),
      ),
    );
  }
}

class RecommendedSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(color: Colors.amber),
                    child: Image.asset("assets/images/recommend.jpg",
                        fit: BoxFit.cover)),
                Positioned(
                    right: 15,
                    top: 15,
                    child: MaterialButton(
                        onPressed: () {},
                        color: const Color.fromRGBO(255, 255, 255, 0.5),
                        height: 40,
                        shape: const CircleBorder(),
                        minWidth: 20,
                        child: const Icon(Icons.favorite,
                            size: 20, color: Colors.white))),
                Positioned(
                    left: 15,
                    top: 15,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(255, 255, 255, .5)),
                      child: const Text(
                        "Technology",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            );
          },
        );
      }).toList(),
    );
  }
}
