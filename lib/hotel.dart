import 'package:flutter/material.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({super.key});

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  bool isFavorite = false;
  Color color = Colors.grey;
  Color backgroundColor = Colors.grey[100]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mission 1"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.blue[100]!,
                Colors.yellow[50]!,
              ],
            )),
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 4),
                    color: Colors.white,
                    width: double.infinity,
                    height: double.infinity,
                    child: Container(
                      width: double.infinity,
                      child: Image.asset(
                        'images/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    margin: const EdgeInsets.all(4),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'images/1.jpg',
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    margin: const EdgeInsets.all(4),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'images/2.jpg',
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    margin: const EdgeInsets.all(4),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'images/3.jpg',
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    margin: const EdgeInsets.all(4),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'images/4.jpg',
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16, bottom: 2),
                  child: const Text(
                    "Welcome To Golden Tulip Holland Batu",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                      margin: const EdgeInsets.only(
                          left: 6, right: 6, top: 4, bottom: 1),
                      width: double.infinity,
                      height: double.infinity,
                      child: ListView(
                        children: const [
                          Text(
                            "The 5-star Golden Tulip Holland Resort is ideally located in the heart of leisure place in Batu, with easy access to family recreational place and entertainments. It offers two food & beverage venues, swimming pools, a spa, a fitness center, a kids playground and meeting room facilities which cater up to 2000 person.\n",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Golden Tulip Holland Resort offers the kind of facilities and services that make travelling with children a breeze. The hotel is geared towards the needs and requirements of all families, big and small. Our hotel offers various activities for kids, along with a pool/slide.\n",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Try our tempting menu of drinks and light meals available 24 hours. When you feel the need of food and beverage, we are ready to serve you. Our business center offers computer use and internet services, photocopying, printing and facsimile.\n",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                      color = isFavorite ? Colors.red[400]! : Colors.grey;
                      backgroundColor =
                          isFavorite ? Colors.white : Colors.grey[100]!;
                    });
                  },
                  shape: const CircleBorder(),
                  child: Icon(
                    Icons.favorite,
                    color: color,
                  ),
                  backgroundColor: backgroundColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
